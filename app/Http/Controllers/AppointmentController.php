<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Appointment;
use App\Treatment;
use App\AppointmentTreatment;

class AppointmentController extends Controller
{
    public function index($date = null)
    {
      if (is_null($date)) {$date = date("Y-m-d");}      
      $custom_waiting   = $this->getAppointments(['Waiting'], $date);
      $custom_done = $this->getAppointments(['Done', 'Cancelled'], $date);
      $today_done = $this->getAppointments(['Done', 'Cancelled'], date("Y-m-d"));
      $today_ongoing   = $this->getAppointments(['On-Going'], date("Y-m-d"));

      return view('admin/appointments', [
        'custom_waiting' => $custom_waiting,
        'custom_done' => $custom_done,
        'today_done' => $today_done,
        'today_ongoing' => $today_ongoing,
        'appt_date' => $date
      ]);
    }

    public function setViewDate(Request $request)
    {
      $appt_date = trim($request->input('appt_date'));
      return redirect('emrs/appointments/viewdate/' . $appt_date);
    }    

    public function setStatusByAppointmentId($status, $id)
    {
      $appointment = Appointment::find($id);
      $appointment->appt_status = $status;
      $appointment->save();
    }  

    public function getAppointments($status, $date)
    {
      $data = DB::table('appointments')
      ->join('patients', 'patients.id', '=', 'appointments.patient_id')
      ->select('appointments.id as appointment_id',
      'patients.id as patient_id',
      'appt_status',
      'appt_type',
      'first_name',
      'last_name'
      )
      ->where('appointments.appt_date', '>=', $date . ' 00:00:00') 
      ->where('appointments.appt_date', '<=', $date . ' 32:59:59')     
      ->whereIn('appointments.appt_status', $status)
      ->get();

      return $data;
    }

    public function add(Request $request, $id)
    {
      $appt_date = trim($request->input('appt_date'));
      if ($appt_date == '') {
        $appt_date = date("Y-m-d");
      }

      if ($this->isOnWaitList($id, $appt_date)) {
        return redirect('emrs/patients')->with(['message' => "Patient is already on waitlist or currently on treatment", 'alert-type' => 'error']);
      } 

      if ($appt_date < date("Y-m-d")) {
        return redirect('emrs/patients')->with(['message' => "Booking of past dates is not allowed", 'alert-type' => 'error']);

      }



      if ($appt_date == date("Y-m-d")) {
        $appt_type = 'Walk-In';
      } else {
        $appt_type = 'Appointment';
      }

      DB::table('appointments')->insert([
          'patient_id' => $id,
          'batch_id' => 1,          
          'appt_status' => 'Waiting',
          'appt_type' => $appt_type,
          'appt_date' => $appt_date . ' 00:00:00',
          'created_at' => date('Y-m-d H:i:s'),
          'updated_at' => date('Y-m-d H:i:s'),
      ]);
      return redirect('emrs/appointments')->with(['message' => "Patient added to wait list", 'alert-type' => 'success']);
    }

    public function isOnWaitList($id, $date)
    {
      $data = DB::table('appointments')
      ->where('patient_id', '>=', $id)
      ->where('appt_date', '>=', $date . ' 00:00:00') 
      ->where('appt_date', '<=', $date . ' 32:59:59')     
      ->whereIn('appt_status', ['Waiting', 'On-Going'])
      ->count();  
 
      if ($data) {
        return true;
      } else {
        return false;
      }
    }    

    public function cancel($id)
    {
      $this->setStatusByAppointmentId('Cancelled', $id);
      return redirect('emrs/appointments')->with(['message' => "Appointment cancelled", 'alert-type' => 'success']);
    }

    public function startTreatmentByAppointmentId($id)
    {
      $this->setStatusByAppointmentId('On-Going', $id);

      $appointment = Appointment::find($id);

      $treatment = New Treatment;
      $treatment->patient_id = $appointment->patient_id;
      $treatment->save();

      $appointmentTreatment = New AppointmentTreatment;
      $appointmentTreatment->appointment_id = $id;
      $appointmentTreatment->treatment_id = $treatment->id;
      $appointmentTreatment->save();

      return redirect("emrs/treatments/view/" . $treatment->id);
    }

    public function viewTreatmentByAppointmentId($id)
    {
      $appointmentTreatment = AppointmentTreatment::where('appointment_id', '=', $id)->first();

      if ($appointmentTreatment) {
        $treatment_id = $appointmentTreatment->treatment_id;
        return redirect("emrs/treatments/view/$treatment_id");
      } else {
        return redirect("emrs/appointments/")->with(['message' => "Treatment not found", 'alert-type' => 'error']);
      }
    }

}
