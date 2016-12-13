@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Upate Vehicle</div>

                <div class="panel-body">

                {!! Form::model($vihicles,array('route'=>['vihicle.update',$vihicles->id],'method'=>'PUT')) !!}

                <div class="from-group">
                  {!! Form:: label('first_name','Enter First Name')!!}
                </div><br>
                <div class="from-group">
                {!!Form:: text('first_name',null,['class'=>'form-controller'])!!}
              </div>

                <div class="from-group">
                  {!! Form::label('last_name','Enter Last Name')!!}
                </div>
                <div class="from-group">
                {!!Form::text('last_name',null,['class'=>'form-controller'])!!}
              </div>

              <div class="from-group">
                {!! Form::label('phone','Enter contact number')!!}
              </div>
              <div class="from-group">
              {!!Form::text('phone',null,['class'=>'form-controller'])!!}
            </div>

            <div class="from-group">
              {!! Form::label('email','Enter Email')!!}
            </div>
            <div class="from-group">
            {!!Form::text('email',null,['class'=>'form-controller'])!!}
          </div>

          <div class="from-group">
            {!! Form::label('manufacturer','Enter Manufacturer')!!}
          </div>
          <div class="from-group">
          {!!Form::text('manufacturer',null,['class'=>'form-controller'])!!}
        </div>

        <div class="from-group">
          {!! Form::label('type','Enter Type')!!}
        </div>
        <div class="from-group">
        {!!Form::text('type',null,['class'=>'form-controller'])!!}
      </div>

      <div class="from-group">
        {!! Form::label('year','Enter year')!!}
      </div>
      <div class="from-group">
      {!!Form::text('year',null,['class'=>'form-controller'])!!}
    </div>

      <div class="from-group">
        {!! Form::label('colour','Enter colour')!!}
      </div>
      <div class="from-group">
      {!!Form::text('colour',null,['class'=>'form-controller'])!!}
    </div>



    <div class="from-group">
      {!! Form::label('mileage','Enter Mileage')!!}
    </div>
    <div class="from-group">
    {!!Form::text('mileage',null,['class'=>'form-controller'])!!}
  </div>

  <br>
                  <div class="from-group">
                    {!! Form::button('Update',['type'=>'submit','class'=>'btn btn-primary'])!!}
                  </div>

                {!!Form::close() !!}
                </div>
            </div>
            @if($errors != null)
              <ul class="aler-danger">
                @foreach($errors->all() as $error)
                  {{$error}}
                @endforeach
              </ul>
            @endif
        </div>
    </div>
</div>
@endsection
