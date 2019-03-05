@extends('voyager::master')

@section('page_title', 'Viewing appointments')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-calendar"></i> Appointments
        </h1>
    </div>
@stop
{{-- dd($done_cancelled_patients) --}}

@section('content')
  <div class="page-content browse container-fluid">
    @include('voyager::alerts')
    <div class="row">
      <div class="col-md-12">
        <div class="col-md-12">
          <form action="{{ URL::to('emrs/appointments/setViewDate') }}" id="setViewDate" method="POST">
            {{ csrf_field() }}
            View appointments scheduled on: <input type="date" value="{{ $appt_date }}" name="appt_date" >   
            <button type="submit" name="btn-view" value="1" class="btn btn-success" >View</button>      
          </form> 
         </div>         
      </div>
    </div>                   

    <div class="row">
      <div class="col-md-12">
        <div class="col-md-6 column">
          <div class="panel panel-primary">
            <div class="panel-heading"> WAITLIST FOR: {{ $appt_date }}</div>
            <table class="table table-bordered" style="font-size:12px">
              <thead>
                <tr><th>#</th><th>Name</th><th>Appointment Type</th><th>Actions</th></tr>
              </thead>
              <tbody>
                @php $x = 1; @endphp
                @foreach ($custom_waiting as $waiting)
                    <tr>
                      <td>{{ $loop->iteration }}</td>
                      <td>{{ $waiting->first_name }} {{ $waiting->last_name }}</td>
                      <td>{{ $waiting->appt_type }}</td>
                      <td>
                        <a href="javascript:;" class="btn btn-sm btn-success start_treatment" data-id="{{ $waiting->appointment_id }}">
                        <i class="voyager-activity"></i> Start treatment</a>
                        <a href="javascript:;" class="btn btn-sm btn-danger cancel" data-id="{{ $waiting->appointment_id }}">
                        <i class="voyager-x"></i> Cancel</a>
                      </td>
                    </tr>
                    @php $x = $loop->count + 1 @endphp
                @endforeach
                @for ($i = $x; $i <= 10; $i++)
                    <tr style="height:60px"><td>{{ $i }}</td><td></td><td></td><td></td></tr>
                @endfor

              </tbody>
            </table>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading"> CANCELLED AND FINISHED TREATMENTS: {{ $appt_date }}</div>
            <table class="table table-bordered" style="font-size:12px">
              <thead>
                <tr><th>#</th><th>Name</th><th>Status</th><th>Link</th></tr>
              </thead>
              <tbody>
                @foreach ($custom_done as $cd)
                    <tr>
                      <td>{{ $loop->iteration }}</td>
                      <td>{{ $cd->first_name }} {{ $cd->last_name }}</td>
                      <td>
                        @if ($cd->appt_status == 'Done')
                          <span class="badge badge-primary">{{ $cd->appt_status }}</span>
                        @else
                          <span class="badge badge-danger">{{ $cd->appt_status }}</span>
                        @endif                        
                      </td>
                      <td>
                        @if ($cd->appt_status == 'Done')
                        <a href="{{ URL::to('emrs/appointments/view/') }}/{{ $cd->appointment_id }}">View</a>
                        @endif
                      </td>                        
                    </tr>
                @endforeach
              </tbody>
            </table>
           </div>                  
        </div>

        <div class="col-md-6 column">
          <div class="panel panel-primary">
            <div class="panel-heading"> TODAY'S TREATMENTS</div>
            <table class="table table-bordered" style="font-size:12px">
              <thead>
                <tr><th>#</th><th>Name</th><th>Link</th></tr>
              </thead>
              <tbody>
                @php $x = 1; @endphp
                @foreach ($today_ongoing as $to)
                  <tr>
                    <td><a href="{{ URL::to('emrs/appointments/view/') }}/{{ $to->appointment_id }}">{{ $loop->iteration }}</a></td>
                    <td>{{ $to->first_name }} {{ $to->last_name }}</td>
                    <td><a class="btn btn-sm btn-success" href="{{ URL::to('emrs/appointments/view/') }}/{{ $to->appointment_id }}">View</a></td>
                  </tr>
                  @php $x = $loop->count + 1 @endphp
                @endforeach
                @for ($i = $x; $i <= 10; $i++)
                  <tr style="height:60px"><td>{{ $i }}</td><td></td><td></td></tr>
                @endfor
              </tbody>
            </table>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading"> TODAY'S CANCELLED AND FINISHED TREATMENTS</div>
            <table class="table table-bordered" style="font-size:12px">
              <thead>
                <tr><th>#</th><th>Name</th><th>Status</th><th>Link</th></tr>
              </thead>
              <tbody>
                @foreach ($today_done as $td)
                  <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $td->first_name }} {{ $td->last_name }}</td>                   
                    <td>
                      @if ($td->appt_status == 'Done')
                        <span class="badge badge-primary">{{ $td->appt_status }}</span>
                      @else
                        <span class="badge badge-danger">{{ $td->appt_status }}</span>
                      @endif                        
                    </td>                                     
                    <td>
                      @if ($td->appt_status == 'Done')
                      <a href="{{ URL::to('emrs/appointments/view/') }}/{{ $td->appointment_id }}">View</a>
                      @endif
                    </td>                    
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
            $('#start_treatment_form')[0].action = '{{ URL::to('/emrs/appointments/start/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#start_treatment_modal').modal('show');
        });

        $('td').on('click', '.cancel', function (e) {
            $('#cancel_form')[0].action = '{{ URL::to('/emrs/appointments/cancel/__id') }}'.replace('__id', $(this).data('id'));
            //console.log($('#delete_form')[0].action);
            $('#cancel_modal').modal('show');
        });
    </script>
@stop
