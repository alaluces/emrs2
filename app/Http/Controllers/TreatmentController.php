<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Validator;
use App\Treatment;
use Illuminate\Support\Facades\DB;
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
          'weight_goal' => $weight_goal
        ]
      );

      $id = $treatment->id;

      return redirect("/admin/treatments/$id/edit")->with(['message' => "Treatment updated", 'alert-type' => 'success']);
    }
}
