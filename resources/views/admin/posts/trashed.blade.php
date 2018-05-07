@extends('layouts.app')


@section('content')

    <div class="card">
        <h2 class="card-title text-center pt-3">All trashed post</h2>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <th>Image</th>
                <th>Title</th>
                <th>Edit</th>
                <th>Restore</th>
                <th>Destroy</th>
                </thead>
                <tbody>
                @if($posts->count() > 0)
                    @foreach($posts as $post)
                        <tr>
                            <td><img width="50px" height="50px" src="{{ $post->featured }}" alt="{{ $post->title }}"></td>
                            <td>{{ $post->title }}</td>
                            <td>Edit</td>
                            <td><a href="{{ route('post.restore', ['id'=>$post->id]) }}" class="btn btn-sm btn-success">Restore</a></td>
                            <td><a href="{{ route('post.kill', ['id'=>$post->id]) }}" class="btn btn-sm btn-danger">Delete</a></td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="5" class="text-center">No trashed post !</td>
                    </tr>
                @endif
                </tbody>
            </table>
        </div>
    </div>

@stop