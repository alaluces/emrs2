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

    'dp_dialyzer',
    'dp_prec_uf_time',
    'dp_iso_uf_time',
    'dp_dialysate',
    'ac_heparin',
    'ac_heparin_prime',
    'ac_heparin_rate',
    'ac_stop_time',
    'ac_frequency',
    'ds_machine_number',
    'ds_station',
    'ds_chemical_residue',
    'ds_conductivity',
    'ds_prechecks',
    'va_site_assessment',
    'va_fistula',
    'va_cathether',

    
    'patient_id'
  ];

}
