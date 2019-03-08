@extends('voyager::master')

@section('page_title', 'Viewing appointments')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-person"></i> Patient Details
        </h1>
    </div>
@stop

@section('content')
  <div class="page-content browse container-fluid">
    @include('voyager::alerts')


    <div class="row">
      <div class="col-md-12">
        <div class="col-md-2 column"></div>
        <div class="col-md-8 column">
          <div class="panel panel-primary">
            <div class="panel-heading clearfix" style="padding-left: 10px; padding-right: 10px;" >
              
                <a class="btn btn-sm btn-success pull-right" href="{{ URL::to('emrs/patients/') }}/{{ $patient->id }}/edit">edit</a>
                             
              <h4>Patient Info</h4> 
            </div>
            <table class="table table-bordered" style="font-size:12px">  
              <tbody>
                <tr>
                  <td>Patient Name</td>
                  <td><span> {{ $patient->last_name ?? '' }}, {{ $patient->first_name ?? '' }}</span></td>
                </tr>
                <tr>
                  <td>Birth Date</td>
                  <td><span> {{ $patient->birth_date ?? '' }}</span></td>
                </tr>
                <tr>
                  <td>Gender</td>
                  <td><span> {{ $patient->gender ?? '' }}</span></td>
                </tr>
                <tr>
                  <td>Contact Number</td>
                  <td><span> {{ $patient->contact_number ?? '' }}</span></td>
                </tr>     
              </tbody>
            </table>
          </div>
                
        </div>
        <div class="col-md-2 column"></div>
      </div>
    </div>  

    <div class="row">
      <div class="col-md-12">
        <div class="col-md-2 column"></div>
        <div class="col-md-8 column">
          <div class="panel panel-primary">
            <div class="panel-heading" style="padding-left: 10px;">Treatment History</div>
            <table class="table table-bordered" style="font-size:12px">
              <thead>
                <tr><th>#</th><th>Date</th><th>Appointment Type</th><th>Link</th></tr>
              </thead>
              <tbody>
                @php $x = 1; @endphp
                @foreach ($treatments as $t) 
                  <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $t->treatment_date }}</td>
                    <td>{{ $t->appt_type }}</td>
                    <td><a href="{{ URL::to('emrs/treatments/') }}/view/{{ $t->treatment_id }}">view</a></td>
                  </tr>         
                @endforeach      
              </tbody>
            </table>
          </div>
                
        </div>
        <div class="col-md-2 column"></div>
      </div>
    </div>


  </div>