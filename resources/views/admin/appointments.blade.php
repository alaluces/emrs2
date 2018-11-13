@extends('voyager::master')

@section('page_title', 'Viewing appointments')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-calendar"></i> Appointments
        </h1>
    </div>
@stop
{{-- dd($patients) --}}
@section('content')
  <div class="page-content browse container-fluid">
      @include('voyager::alerts')
      <div class="row">
          <div class="col-md-12">

            <div class="col-md-6 column">
                <div class="panel panel-primary">
                  <div class="panel-heading">Today's Wait List - {{ date("Ymd") }}</div>
                  <table class="table table-bordered" style="font-size:12px">
                    <thead>
                      <tr><th>#</th><th>Name</th><th>Appt Type</th><th>Actions</th></tr>
                    </thead>
                    <tbody>

                      @foreach ($patients as $patient)
                          @continue($patient->appt_status == 'Ongoing')
                          @continue($patient->appt_status == 'Done')
                          <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $patient->appt_status }}</td>
                            <td>{{ $patient->appt_type }}</td>
                            <td>
                              <a href="javascript:;" class="btn btn-sm btn-success">
                              <i class="voyager-activity"></i> Start treatment</a>
                              <a href="javascript:;" class="btn btn-sm btn-danger">
                              <i class="voyager-x"></i> Cancel</a>
                            </td>
                          </tr>
                      @endforeach
                      @for ($i = 0; $i < 10; $i++)
                          <tr><td>{{ $i }}</td><td></td><td></td><td></td></tr>
                      @endfor

                    </tbody>
                  </table>
                  </div>
            </div>

            <div class="col-md-6 column">
              <div class="panel panel-primary">
                <div class="panel-heading">ONGOING TREATMENTS</div>
                <table class="table table-bordered" style="font-size:12px">
                  <thead>
                    <tr><th>#</th><th>Name</th><th>Assigned Station</th></tr>
                  </thead>
                  <tbody>


                  </tbody>
                </table>
             </div>
                <div class="panel panel-primary">
                  <div class="panel-heading">Done / Cancelled</div>
                  <table class="table table-bordered" style="font-size:12px">
                    <thead>
                      <tr><th>#</th><th>Name</th><th>Status</th></tr>
                    </thead>
                    <tbody>


                    </tbody>
                  </table>
               </div>


            </div>

          </div>
      </div>
    </div>


@stop
