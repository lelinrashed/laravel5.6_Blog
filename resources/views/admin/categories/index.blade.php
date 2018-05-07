@extends('layouts.app')


@section('content')

    <div class="card">
        <h2 class="card-title text-center pt-3">All categories</h2>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <th>Category name</th>
                <th>Editing</th>
                <th>Deleting</th>
                </thead>
                <tbody>
                @if($categories->count() > 0)
                    @foreach($categories as $category)
                        <tr>
                            <td>{{ $category->name }}</td>
                            <td>
                                <a href="{{ route('category.edit', ['id' => $category->id ]) }}" class="btn btn-sm btn-info">Edit</a>
                            </td>
                            <td>
                                <a href="{{ route('category.delete', ['id' => $category->id ]) }}" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="5" class="text-center">No category available !</td>
                    </tr>
                @endif
                </tbody>
            </table>
        </div>
    </div>

@stop