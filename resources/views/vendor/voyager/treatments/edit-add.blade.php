

@extends('voyager::master')

@section('page_title', 'Viewing treatments')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-activity"></i> Treatments
        </h1>
    </div>
@stop
{{-- dd($dataTypeContent)--}}

@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="page-content browse container-fluid">
  @include('voyager::alerts')
  <div class="row">

  <form action="{{ URL::to('emrs/treatments/save/') }}" id="start_form" method="POST">
  {{ csrf_field() }}
  <input type="hidden" name="id" value="{{ $dataTypeContent->id ?? '' }}">
  <input type="hidden" name="patient_id" value="{{ $patient->id ?? '' }}">  

    <div class="col-md-12">
      <div class="col-md-6 column">
        <div class="panel panel-primary">
          <div class="panel-heading"> <span>PATIENT INFORMATION</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Patient Name</td>
                <td><input class="form-control" value="{{ $patient->last_name ?? '' }}, {{ $patient->first_name ?? '' }}"></td>
              </tr>
              <tr>
                <td></td>
                <td>
                  <div class="form-inline">
                    Gender  <input style="width:50px;" class="form-control" name="gender" value="{{ $patient->gender ?? '' }}">
                    Birth Date  <input style="width:120px;" class="form-control" name="birth_date" value="{{ $patient->birth_date ?? '' }}">
                  </div>
                </td>
              </tr>
              
              <tr>
                <td>Physician</td>
                <td><input class="form-control" name="physician" value="{{ $dataTypeContent->physician ?? '' }}"></td>
              </tr>
              <tr>
                <td>Blood Pressure</td>
                <td>
                  <div class="form-inline">
                    <input style="width:50px;" class="form-control" name="bp_systolic" value="{{ $dataTypeContent->bp_systolic ?? '' }}">
                    / <input style="width:50px;" class="form-control" name="bp_diastolic" value="{{ $dataTypeContent->bp_diastolic ?? '' }}">
                  </div>
                 </td>
              </tr>                    
            </tbody>                  
          </table>
        </div>

        <div class="panel panel-primary">
          <div class="panel-heading"> <span>DIALYSIS PARAMETERS</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Dialyzer</td>
                <td><input class="form-control" name="dp_dialyzer" value="{{ $dataTypeContent->dp_dialyzer ?? '' }}"></td>
              </tr>
              <tr>
                <td>Prescribed UF Time</td>
                <td><input class="form-control" name="dp_prec_uf_time" value="{{ $dataTypeContent->dp_prec_uf_time ?? '' }}"></td>
              </tr>              
              <tr>
                <td>ISO UF Tme</td>
                <td><input class="form-control" name="dp_iso_uf_time" value="{{ $dataTypeContent->dp_iso_uf_time ?? '' }}"></td>
              </tr>
              <tr>
                <td>Dialysate</td>
                <td><input class="form-control" name="dp_dialysate" value="{{ $dataTypeContent->dp_dialysate ?? '' }}"></td>
              </tr>                                                  
            </tbody>                  
          </table>
        </div>     

        <div class="panel panel-primary">
          <div class="panel-heading"> <span>ANTICOAGULATION</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Heparin</td>
                <td><input class="form-control" name="ac_heparin" value="{{ $dataTypeContent->ac_heparin ?? '' }}"></td>
              </tr>
              <tr>
                <td>Heparin Prime</td>
                <td><input class="form-control" name="ac_heparin_prime" value="{{ $dataTypeContent->ac_heparin_prime ?? '' }}"></td>
              </tr>              
              <tr>
                <td>Heparin Rate / Hr</td>
                <td><input class="form-control" name="ac_heparin_rate" value="{{ $dataTypeContent->ac_heparin_rate ?? '' }}"></td>
              </tr>
              <tr>
                <td>Stop Time</td>
                <td><input class="form-control" name="ac_stop_time" value="{{ $dataTypeContent->ac_stop_time ?? '' }}"></td>
              </tr>  
              <tr>
                <td>Frequency</td>
                <td><input class="form-control" name="ac_frequency" value="{{ $dataTypeContent->ac_frequency ?? '' }}"></td>
              </tr>                                                               
            </tbody>                  
          </table>
        </div> 

      </div>
      <div class="col-md-6 column">

        <div class="panel panel-primary">
          <div class="panel-heading"> <span>DELIVERY SYSTEM</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Machine #</td>
                <td><input class="form-control" name="ds_machine_number" value="{{ $dataTypeContent->ds_machine_number ?? '' }}"></td>
              </tr>
              <tr>
                <td>Station</td>
                <td><input class="form-control" name="ds_station" value="{{ $dataTypeContent->ds_station ?? '' }}"></td>
              </tr>              
              <tr>
                <td>Chemical Residue</td>
                <td><input class="form-control" name="ds_chemical_residue" value="{{ $dataTypeContent->ds_chemical_residue ?? '' }}"></td>
              </tr>
              <tr>
                <td>Conductivity</td>
                <td><input class="form-control" name="ds_conductivity" value="{{ $dataTypeContent->ds_conductivity ?? '' }}"></td>
              </tr>  
              <tr>
                <td>Prechecks</td>
                <td><input class="form-control" name="ds_prechecks" value="{{ $dataTypeContent->ds_prechecks ?? '' }}"></td>
              </tr>                                                               
            </tbody>                  
          </table>
        </div> 

        <div class="panel panel-primary">
          <div class="panel-heading"> <span>VASCULAR ACCESS</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Access Site Assessment</td>
                <td>
                  <textarea class="form-control" name="va_site_assessment">{{ $dataTypeContent->va_site_assessment ?? '' }}</textarea>
                </td>
              </tr>               
              <tr>
                <td>Fistula</td>
                <td><input class="form-control" name="va_fistula" value="{{ $dataTypeContent->va_fistula ?? '' }}"></td>
              </tr>
              <tr>
                <td>Cathether</td>
                <td><input class="form-control" name="va_cathether" value="{{ $dataTypeContent->va_cathether ?? '' }}"></td>
              </tr>              
                                                             
            </tbody>                  
          </table>
        </div>         

        <div class="panel panel-primary">
          <div class="panel-heading"> <span>FLUID MANAGEMENT</span></div>
          <table class="table table-bordered" style="font-size:12px">
            <tbody>
              <tr>
                <td>Weight</td>
                <td>
                  <div class="form-inline">
                    Dry  <input style="width:50px;" class="form-control" name="weight_dry" value="{{ $dataTypeContent->weight_dry ?? '' }}">
                    Pre  <input style="width:50px;" class="form-control" name="weight_pre" value="{{ $dataTypeContent->weight_pre ?? '' }}">
                    Post <input style="width:50px;" class="form-control" name="weight_post" value="{{ $dataTypeContent->weight_post ?? '' }}">
                    Goal <input style="width:50px;" class="form-control" name="weight_goal" value="{{ $dataTypeContent->weight_goal ?? '' }}">
                  </div>
                </td>
              </tr>
              <tr>
                <td>Notes</td>
                <td>
                  <textarea class="form-control" name="notes">{{ $dataTypeContent->notes ?? '' }}</textarea>
                </td>
              </tr>
              @if ($appt_status != 'Done')
              <tr>
                <td></td>
                <td>
                  <div class="form-inline">
                    <button type="submit" name="btn-save" value="1" class="btn btn-success" >Save</button>
                    <button type="submit" name="btn-done" value="1" class="btn btn-info pull-right">Save and complete treatment</button>
                  </div>
                </td>
              </tr>
              @endif              
            </tbody>                  
          </table>
        </div> 

      </div>  

    </div>

  </form>
  </div>
</div>

    {{-- start treatment modal --}}
    <div class="modal modal-success fade" tabindex="-1" id="start_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-calendar"></i> Start patient treatment?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="start_form" method="POST">
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-success pull-right " value="Yes, start treatment">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    {{-- cancel appointment modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="cancel_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-calendar"></i> Cancel patient appointment?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="cancel_form" method="POST">
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right " value="Yes, cancel appointment">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">No, do not cancel appointment</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

@stop

@section('javascript')
    <!-- DataTables -->
    <script>
        $('td').on('click', '.start', function (e) {
            $('#start_form')[0].action = '{{ URL::to('/emrs/appointments/cancel/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#start_modal').modal('show');
        });

        $('td').on('click', '.cancel', function (e) {
            $('#cancel_form')[0].action = '{{ URL::to('/emrs/appointments/cancel/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#cancel_modal').modal('show');
        });
    </script>
@stop
