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
      $waiting   = $this->getAppointments('Waiting', $date);
      $done      = $this->getAppointments('Done', date("Y-m-d"));
      $cancelled = $this->getAppointments('Cancelled', date("Y-m-d"));
      $ongiong   = $this->getAppointments('On-Going', date("Y-m-d"));

      return view('admin/appointments', [
        'waiting_patients' => $waiting,
        'cancelled_patients' => $cancelled,
        'done_patients' => $done,
        'ongoing_patients' => $ongiong,
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
      ->where('appointments.appt_status', '=', $status)
      ->get();

      return $data;
    }



    public function add(Request $request, $id)
    {
      DB::table('appointments')->insert([
          'patient_id' => $id,
          'batch_id' => 1,
          'appt_date' => 'Waiting',
          'appt_status' => 'Waiting',
          'appt_type' => 'Walk-in',
          'appt_date' => date('Y-m-d H:i:s'),
          'created_at' => date('Y-m-d H:i:s'),
          'updated_at' => date('Y-m-d H:i:s'),
      ]);
      return redirect('emrs/appointments')->with(['message' => "Patient added to wait list", 'alert-type' => 'success']);
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
