@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    Thanks for joining us!
                    {{{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}}

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
