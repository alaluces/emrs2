<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Treatment extends Model
{
  protected $table = 'treatments';

  protected $fillable = [
    'physician',
    'bp_systolic',
    'bp_diastolic',
    'notes',
    'weight_dry',
    'weight_pre',
    'weight_post',
    'weight_goal',
    'patient_id'
  ];

}
