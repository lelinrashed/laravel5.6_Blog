@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Edit blog settings</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('settings.update') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">Site name</label>
                    <input type="text" class="form-control" name="site_name" value="{{ $settings->site_name }}" id="name">
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" name="address" value="{{ $settings->address }}" id="address">
                </div>
                <div class="form-group">
                    <label for="contact_number">Contact phone</label>
                    <input type="text" class="form-control" name="contact_number" value="{{ $settings->contact_number }}" id="contact_number">
                </div>
                <div class="form-group">
                    <label for="contact_email">Contact email</label>
                    <input type="email" class="form-control" name="contact_email" value="{{ $settings->contact_email }}" id="contact_email">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update site settings</button>
            </form>
        </div>
    </div>

@stop