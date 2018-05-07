@extends('layouts.app')


@section('content')

    <div class="card">
        <h2 class="card-title text-center pt-3">All posts</h2>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <th>Image</th>
                <th>Title</th>
                <th>Edit</th>
                <th>Trash</th>
                </thead>
                <tbody>
                @if($posts->count() > 0)
                    @foreach($posts as $post)
                        <tr>
                            <td><img width="50px" height="50px" src="{{ $post->featured }}" alt="{{ $post->title }}"></td>
                            <td>{{ $post->title }}</td>
                            <td>
                                <a href="{{ route('post.edit', ['id'=>$post->id]) }}" class="btn btn-sm btn-info">Edit</a>
                            </td>
                            <td>
                                <a href="{{ route('post.delete', ['id'=>$post->id]) }}" class="btn btn-sm btn-danger">Trash</a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="5" class="text-center">No posts available !</td>
                    </tr>
                @endif
                </tbody>
            </table>
        </div>
    </div>

@stop