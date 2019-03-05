<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Validator;
use App\Treatment;
use App\Patient;
use App\Appointment;
use App\Http\Controllers\AppointmentController;
use App\AppointmentTreatment;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TreatmentController extends Controller
{
    public function save(Request $request)
    {
      $request->validate([
          'physician' => 'required',
          'bp_diastolic' => 'required',
          'bp_systolic' => 'required',
          'weight_dry' => 'required',
          'weight_pre' => 'required',
          'weight_post' => 'required',
          'weight_goal' => 'required',
          'patient_id' => 'required',
      ]);

      $id           = trim($request->input('id', null));
      $physician    = trim($request->input('physician'));
      $bp_diastolic = trim($request->input('bp_diastolic'));
      $bp_systolic  = trim($request->input('bp_systolic'));
      $notes        = trim($request->input('notes'));
      $weight_dry   = trim($request->input('weight_dry'));
      $weight_pre   = trim($request->input('weight_pre'));
      $weight_post  = trim($request->input('weight_post'));
      $weight_goal  = trim($request->input('weight_goal'));
      $patient_id  = trim($request->input('patient_id'));

      $treatment = Treatment::updateOrCreate(
        ['id' => $id],
        [
          'physician' => $physician,
          'bp_systolic' => $bp_systolic,
          'bp_diastolic' => $bp_diastolic,
          'notes' => $notes,
          'weight_dry' => $weight_dry,
          'weight_pre' => $weight_pre,
          'weight_post' => $weight_post,
          'weight_goal' => $weight_goal,
          'patient_id' => $patient_id
        ]
      );

      $id = $treatment->id;

      if ($request->has('btn-done')) {
        $appointmentTreatment = AppointmentTreatment::where('treatment_id', '=', $id)->first();
        if ($appointmentTreatment) {          
          $appointment = new AppointmentController;
          $appointment->setStatusByAppointmentId('Done', $appointmentTreatment->appointment_id);
        }
      }

      return redirect("/emrs/treatments/view/$id")->with(['message' => "Treatment updated", 'alert-type' => 'success']);
    }

    public function view($id)
    {
      $treatment = Treatment::find($id);
      $appointmentTreatment = AppointmentTreatment::where('treatment_id', '=', $id)->first();
      $appointment = Appointment::find($appointmentTreatment->appointment_id);
      $patient = Patient::find($treatment->patient_id);

      return view('vendor.voyager.treatments.edit-add', ['appt_status' => $appointment->appt_status, 'patient' => $patient, 'dataTypeContent' => $treatment]);
    }

}
