@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
          @if(Session::has('message'))
              <div class="alert alert-success">
                {{Session::get('message')}}
              </div>
          @endif
            <div class="panel panel-default">
                <div class="panel-heading">Welcome Back!
                {{{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}}</div>
                  {{link_to_route('vihicle.create','New Vehicle',null,['class'=>'btn btn-success'])}}
                <div class="panel-body">

                  <table align="center" class="table">
                    <caption>Vehicle Info</caption>
                    <tr>
                      <th>Owner Name</th>
                      <th>Manufacurer</th>
                      <th>Type</th>
                      <th>Date Registered</th>
                      <th>Action</th>
                    </tr>
                      @foreach($vehicles as $vicle)
                          <tr>
                            <td> {{link_to_route('vihicle.show',$vicle->first_name,[$vicle->id])}}

                            </td>
                            <td>
                              {{$vicle->manufacturer}}
                            </td>
                            <td>
                              {{$vicle->type}}
                            </td>
                            <td>
                              {{$vicle->created_at}}
                            </td>
                            <td>
                            {!! Form::open(array('route'=>['vihicle.destroy',$vicle->id],'method'=>'DELETE','onsubmit' => "return confirm('Are you sure you want to delete?')")) !!}
                              {{link_to_route('vihicle.edit','Edit',[$vicle->id],['class'=>'btn btn-primary'])}}
                              |
                              {!! Form::button('Delete',['type'=>'submit','class'=>'btn btn-danger'])!!}
                            {!!Form::close() !!}
                            </td>
                          </tr>
                      @endforeach
                    </table>
                    <script>
                        $("Form").on("submit", function(){
                          alert('here');
                            return confirm("Do you want to delete this item?");
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
