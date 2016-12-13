@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

            <div class="panel panel-default">
                <div class="panel-heading">Vehicle Info</div>

                <div class="panel-body">
                <div class="table-responsive"
                <table class="table">
                  <tr>
                    <td><label class="">First Name :</label> </td>
                    <td>  {{$vihicles->first_name}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Last Name :</label> </td>
                    <td align="right"style="padding-left:10px">  {{$vihicles->last_name}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Phone :   </label> </td>
                    <td>  {{$vihicles->phone}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Email :</label> </td>
                    <td>  {{$vihicles->email}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Manufacturer :</label> </td>
                    <td>  {{$vihicles->manufacturer}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Type :</label> </td>
                    <td>  {{$vihicles->type}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Year :</label> </td>
                    <td>  {{$vihicles->year}} </td>
                  </tr><br>

                  <tr>
                    <td><label class="">Mileage :</label> </td>
                    <td>  {{$vihicles->mileage}} </td>
                  </tr>
                </table
                <div class="pull-right">
                  <p>Click here to print :
                    {{link_to_route('vihecle.getPDF','Print',[$vihicles->id],['class'=>'btn glyphicon-print' ,'target'=>'_blank'])}}

                  </p>
                </div>
              </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
