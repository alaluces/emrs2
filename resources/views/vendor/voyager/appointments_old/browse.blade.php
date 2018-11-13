@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '.$dataType->display_name_plural)

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-calendar"></i> Appointments {{ $name }}
        </h1>
    </div>
@stop

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
                      <tr><th>#</th><th>Name</th><th>Appt Type</th></tr>
                    </thead>
                    <tbody>
                      @for ($i = 0; $i < 10; $i++)
                          <tr><td>{{ $i }}</td><td></td><td></td></tr>
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


    {{-- Single delete modal --}}
    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager::generic.close') }}"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager::generic.delete_question') }} {{ strtolower($dataType->display_name_singular) }}?</h4>
                </div>
                <div class="modal-footer">
                    <form action="#" id="delete_form" method="POST">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="{{ __('voyager::generic.delete_confirm') }}">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop
