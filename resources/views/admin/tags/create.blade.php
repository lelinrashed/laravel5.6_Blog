@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Create a new tag</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('tag.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">Tag Name</label>
                    <input type="text" class="form-control" name="tag" id="name">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Store Tag</button>
            </form>
        </div>
    </div>

@stop