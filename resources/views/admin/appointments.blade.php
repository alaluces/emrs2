@extends('voyager::master')

@section('page_title', 'Viewing appointments')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-calendar"></i> Appointments
        </h1>
    </div>
@stop
{{-- dd($appointments) --}}

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

                      @foreach ($appointments as $appointment)
                          @continue($appointment->appt_status == 'On-Going')
                          @continue($appointment->appt_status == 'Done')
                          @continue($appointment->appt_status == 'Cancelled')
                          <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $appointment->first_name }} {{ $appointment->last_name }}</td>
                            <td>{{ $appointment->appt_type }}</td>
                            <td>
                              <a href="javascript:;" class="btn btn-sm btn-success start_treatment" data-id="{{ $appointment->appointment_id }}">
                              <i class="voyager-activity"></i> Start treatment</a>

                              <a href="javascript:;" class="btn btn-sm btn-danger cancel" data-id="{{ $appointment->appointment_id }}">
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
                    <tr><th>#</th><th>Name</th><th>Link</th></tr>
                  </thead>
                  <tbody>
                    @foreach ($appointments as $appointment)
                        @continue($appointment->appt_status == 'Done')
                        @continue($appointment->appt_status == 'Cancelled')
                        @continue($appointment->appt_status == 'Waiting')
                        <tr>
                          <td><a href="{{ URL::to('admin/appointments/view/') }}/{{ $appointment->appointment_id }}">{{ $loop->iteration }}</a></td>
                          <td>{{ $appointment->first_name }} {{ $appointment->last_name }}</td>
                          <td><a class="btn btn-sm btn-success" href="{{ URL::to('admin/appointments/view/') }}/{{ $appointment->appointment_id }}">View</a></td>
                        </tr>
                    @endforeach

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
                      @foreach ($appointments as $appointment)
                          @continue($appointment->appt_status == 'On-Going')
                          @continue($appointment->appt_status == 'Waiting')
                          <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $appointment->first_name }} {{ $appointment->last_name }}</td>
                            <td>{{ $appointment->appt_status }}</td>
                          </tr>
                      @endforeach
                    </tbody>
                  </table>
               </div>


            </div>

          </div>
      </div>
    </div>


    {{-- start treatment modal --}}
    <div class="modal modal-success fade" tabindex="-1" id="start_treatment_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-calendar"></i> Start patient treatment?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="start_treatment_form" method="POST">
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
        $('td').on('click', '.start_treatment', function (e) {
            $('#start_treatment_form')[0].action = '{{ URL::to('/admin/appointments/start/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#start_treatment_modal').modal('show');
        });

        $('td').on('click', '.cancel', function (e) {
            $('#cancel_form')[0].action = '{{ URL::to('/admin/appointments/cancel/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#cancel_modal').modal('show');
        });
    </script>
@stop
