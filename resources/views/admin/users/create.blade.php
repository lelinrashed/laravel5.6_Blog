@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Create a new user</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('user.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">User Name</label>
                    <input type="text" class="form-control" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="email">User Email</label>
                    <input type="email" class="form-control" name="email" id="email">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Add user</button>
            </form>
        </div>
    </div>

@stop