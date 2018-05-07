@extends('layouts.app');


@section('content')
    @include('admin.includes.errors')

    <div class="card">
        <h2 class="card-title text-center pt-3">Edit post : {{ $post->title }}</h2>
        <hr>
        <div class="card-body">
            <form action="{{ route('post.update', ['id'=>$post->id]) }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title" id="title" value="{{ $post->title }}">
                </div>
                <div class="form-group">
                    <label for="featured">Featured Image</label>
                    <input type="file" class="form-control" name="featured" id="featured">
                </div>
                <div class="form-group">
                    <label for="category">Select a category</label>
                    <select name="category_id" id="category" class="form-control">
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}"
                            @if($post->category->id == $category->id)
                                selected
                            @endif
                            >{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Select a tag</label>
                    @foreach($tags as $tag)
                        <div class="form-check">
                            <label for="{{ $tag->tag }}"><input type="checkbox" name="tags[]" value="{{ $tag->id }}" id="{{ $tag->tag }}"
                                @foreach($post->tags as $t)
                                    @if($tag->id == $t->id)
                                        checked
                                    @endif
                                @endforeach
                                >{{ $tag->tag }}</label>
                        </div>
                    @endforeach
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea name="content" id="content" cols="5" rows="5" class="form-control">{{ $post->content }}</textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update Post</button>
            </form>
        </div>
    </div>


@stop