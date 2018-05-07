@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Edit your profile</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('user.profile.update') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">Username</label>
                    <input type="text" value="{{ $user->name }}" class="form-control" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="email">User Email</label>
                    <input type="email" value="{{ $user->email }}" class="form-control" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="about">About user</label>
                    <textarea name="about" id="about" cols="6" rows="6" class="form-control">{{ $user->profile->about }}</textarea>
                </div>
                <div class="form-group">
                    <label for="password">New password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>
                <div class="form-group">
                    <label for="avatar">Upload new avatar</label>
                    <input type="file" class="form-control" name="avatar" id="avatar">
                </div>
                <div class="form-group">
                    <label for="facebook">Facebook</label>
                    <input type="text" value="{{ $user->profile->facebook }}" class="form-control" name="facebook" id="facebook">
                </div>
                <div class="form-group">
                    <label for="youtube">Youtube</label>
                    <input type="text" value="{{ $user->profile->youtube }}" class="form-control" name="youtube" id="youtube">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update profile</button>
            </form>
        </div>
    </div>

@stop