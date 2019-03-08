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
      $patient_id   = trim($request->input('patient_id'));

      $dp_dialyzer = trim($request->input('dp_dialyzer'));
      $dp_prec_uf_time = trim($request->input('dp_prec_uf_time'));
      $dp_iso_uf_time = trim($request->input('dp_iso_uf_time'));
      $dp_dialysate = trim($request->input('dp_dialysate'));

      $ac_heparin = trim($request->input('ac_heparin'));
      $ac_heparin_prime = trim($request->input('ac_heparin_prime'));
      $ac_heparin_rate = trim($request->input('ac_heparin_rate'));
      $ac_stop_time = trim($request->input('ac_stop_time'));
      $ac_frequency = trim($request->input('ac_frequency'));

      $ds_machine_number = trim($request->input('ds_machine_number'));
      $ds_station = trim($request->input('ds_station'));
      $ds_chemical_residue = trim($request->input('ds_chemical_residue'));
      $ds_conductivity = trim($request->input('ds_conductivity'));
      $ds_prechecks = trim($request->input('ds_prechecks'));

      $va_site_assessment = trim($request->input('va_site_assessment'));
      $va_fistula = trim($request->input('va_fistula'));
      $va_cathether = trim($request->input('va_cathether'));


      $treatment = Treatment::updateOrCreate(
        ['id' => $id],
        [
          'physician' => $physician,
          'bp_systolic' => $bp_systolic,
          'bp_diastolic' => $bp_diastolic,
          'notes' => $notes,

          'dp_dialyzer' => $dp_dialyzer,
          'dp_prec_uf_time' => $dp_prec_uf_time,
          'dp_iso_uf_time' => $dp_iso_uf_time,
          'dp_dialysate' => $dp_dialysate,

          'ac_heparin' => $ac_heparin,
          'ac_heparin_prime' => $ac_heparin_prime,
          'ac_heparin_rate' => $ac_heparin_rate,
          'ac_stop_time' => $ac_stop_time,
          'ac_frequency' => $ac_frequency,

          'ds_machine_number' => $ds_machine_number,
          'ds_station' => $ds_station,
          'ds_chemical_residue' => $ds_chemical_residue,
          'ds_conductivity' => $ds_conductivity,
          'ds_prechecks' => $ds_prechecks,

          'va_site_assessment' => $va_site_assessment,
          'va_fistula' => $va_fistula,
          'va_cathether' => $va_cathether,

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

      return view('treatments-edit', ['appt_status' => $appointment->appt_status, 'patient' => $patient, 'dataTypeContent' => $treatment]);
    }

}
