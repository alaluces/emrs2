<?php
namespace App\Http\Controllers;

use App\Treatment;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TreatmentController extends Controller
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

      return redirect("/admin/treatments/$id/edit")->with(['message' => "Treatment updated", 'alert-type' => 'success']);
    }
}
