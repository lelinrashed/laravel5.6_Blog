@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Create a new category</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('category.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">Category Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Your category">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </form>
        </div>
    </div>
@stop