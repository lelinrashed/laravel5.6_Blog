@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-4">
            <div class="card">
                <h4 class="card-header text-center">Pub posts</h4>
                <div class="card-body">
                    <h2 class="text-center">{{ $post_count }}</h2>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <h4 class="card-header text-center">Trash posts</h4>
                <div class="card-body">
                    <h2 class="text-center">{{ $trash_count }}</h2>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <h4 class="card-header text-center">Categor-ies</h4>
                <div class="card-body">
                    <h2 class="text-center">{{ $categories_count }}</h2>
                </div>
            </div>
        </div>
    </div>
@endsection
