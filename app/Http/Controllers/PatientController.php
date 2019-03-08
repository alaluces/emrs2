<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Appointment;
use App\Treatment;
use App\Patient;
use App\AppointmentTreatment;

class PatientController extends Controller
{
    public function index($id)
    {
      return view('patients-view', [
        'patient' => Patient::find($id),
        'treatments' => $this->getTreatmentHistory($id)       
      ]);
    }

    public function getTreatmentHistory($id)
    {
      $data = DB::table('appointments')
      ->join('appointment_treatment', 'appointment_treatment.appointment_id', '=', 'appointments.id')
      ->select('appointments.id as appointment_id',
      'appointment_treatment.treatment_id as treatment_id',
      'appointments.updated_at as treatment_date',
      'appt_type'

      )
      ->where('appointments.patient_id', '=', $id) 
      ->get();

      return $data;
    }


}
