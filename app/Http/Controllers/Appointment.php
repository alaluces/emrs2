<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;

class Appointment extends Controller
{

    public function index()
    {
      $data = DB::table('appointments')
      ->join('patients', 'appointments.patient_id', '=', 'patients.id')
      ->where('appointments.created_at', '>=', Carbon::today())
      ->get();

        //$data = DB::table('appointments')->get();

        return view('/admin/appointments', ['appointments' => $data]);
    }

    public function add(Request $request, $id)
    {
      //dd($id);
      DB::table('appointments')->insert([
          'patient_id' => $id,
          'batch_id' => 1,
          'appt_status' => 'Waiting',
          'appt_type' => 'Walk-in',
          //'created_at' => date('2018-11-10 11:25:14'),
          'created_at' => date('Y-m-d H:i:s'),
          'updated_at' => date('Y-m-d H:i:s'),
      ]);
      return redirect('/admin/appointments')->with(['message' => "Patient added to wait list", 'alert-type' => 'success']);
    }

    public function cancel($id)
    {
      //dd($id);
      DB::table('appointments')
                  ->where('id', $id)
                  ->update(['appt_status' => 'Cancelled']);
      return redirect('/admin/appointments')->with(['message' => "Appointment cancelled", 'alert-type' => 'success']);
    }
}
///z2X5fdA
