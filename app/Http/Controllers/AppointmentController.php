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
    public function index()
    {
      $waiting   = $this->getAppointmentsByStatus('Waiting');
      $done      = $this->getAppointmentsByStatus('Done');
      $cancelled = $this->getAppointmentsByStatus('Cancelled');
      $ongiong   = $this->getAppointmentsByStatus('On-Going');

      return view('admin/appointments', [
        'waiting_patients' => $waiting,
        'cancelled_patients' => $cancelled,
        'done_patients' => $done,
        'ongoing_patients' => $ongiong
      ]);
    }

    public function getAppointmentsByStatus($status)
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
      ->where('appointments.created_at', '>=', Carbon::today())
      ->where('appointments.appt_status', '=', $status)
      ->get();

      return $data;
    }



    public function add(Request $request, $id)
    {
      DB::table('appointments')->insert([
          'patient_id' => $id,
          'batch_id' => 1,
          'appt_status' => 'Waiting',
          'appt_type' => 'Walk-in',
          'created_at' => date('Y-m-d H:i:s'),
          'updated_at' => date('Y-m-d H:i:s'),
      ]);
      return redirect('emrs/appointments')->with(['message' => "Patient added to wait list", 'alert-type' => 'success']);
    }

    public function cancel($id)
    {
      $appointment = Appointment::find($id);
      $appointment->appt_status = 'Cancelled';
      $appointment->save();
      return redirect('emrs/appointments')->with(['message' => "Appointment cancelled", 'alert-type' => 'success']);
    }

    public function startTreatmentByAppointmentId($id)
    {
      $appointment = Appointment::find($id);
      $appointment->appt_status = 'On-Going';
      $appointment->save();

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
