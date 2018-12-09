<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;

class Treatment extends Controller
{

    public function save(Request $request)
    {

      $id           = trim($request->id);
      $physician    = trim($request->physician);
      $bp_diastolic = trim($request->bp_diastolic);
      $bp_systolic  = trim($request->bp_systolic);
      $notes        = trim($request->notes);
      $weight_dry   = trim($request->weight_dry);
      $weight_pre   = trim($request->weight_pre);
      $weight_post  = trim($request->weight_post);
      $weight_goal  = trim($request->weight_goal);

      if (DB::table('treatments')->where('id', '=', $id)->first()) {
        //dd($request);
        DB::table('treatments')
                    ->where('id', $id)
                    ->update([
                      'physician' => $physician,
                      'bp_diastolic' => $bp_diastolic,
                      'bp_systolic' => $bp_systolic,
                      'notes' => $notes,
                      'weight_dry' => $weight_dry,
                      'weight_pre' => $weight_pre,
                      'weight_post' => $weight_post,
                      'weight_goal' => $weight_goal
                    ]);

      } else {
        DB::table('treatments')->insert([
            'physician' => $physician,
            'bp_systolic' => $bp_systolic,
            'bp_diastolic' => $bp_diastolic,
            'notes' => $notes,
            'weight_dry' => $weight_dry,
            'weight_pre' => $weight_pre,
            'weight_post' => $weight_post,
            'weight_goal' => $weight_goal,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
      }
    
      return redirect('/admin/treatments')->with(['message' => "Treatment updated", 'alert-type' => 'success']);
    }


}
///z2X5fdA
