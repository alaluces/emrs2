<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class Appointment extends Controller
{

    public function add(Request $request, $id){
      //dd($id);

      DB::table('appointments')->insert([
          'patient_id' => $id,
          'batch_id' => 1,
          'appt_status' => 'waiting',
          'appt_type' => 'walk-in'
      ]);
      return redirect('/admin/appointments')->with(['message' => "Patient added to wait list", 'alert-type' => 'success']);

    }
}
///z2X5fdA
