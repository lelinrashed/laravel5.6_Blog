@extends('layouts.app')


@section('content')

    <div class="card">
        <h2 class="card-title text-center pt-3">All tags</h2>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <th>Tag name</th>
                <th>Editing</th>
                <th>Deleting</th>
                </thead>
                <tbody>
                @if($tags->count() > 0)
                    @foreach($tags as $tag)
                        <tr>
                            <td>{{ $tag->tag }}</td>
                            <td>
                                <a href="{{ route('tag.edit', ['id' => $tag->id ]) }}" class="btn btn-sm btn-info">Edit</a>
                            </td>
                            <td>
                                <a href="{{ route('tag.delete', ['id' => $tag->id ]) }}" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="5" class="text-center">No Tags available !</td>
                    </tr>
                @endif
                </tbody>
            </table>
        </div>
    </div>

@stop