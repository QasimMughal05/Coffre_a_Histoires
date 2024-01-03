@extends('layout')
@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('messages.book_view_title') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

                    <body>

                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h1>{{ __('messages.book_table') }}</h1>
                                </div>
                                @if(Auth::user()->user_type == 1)
                                <div class="col">
                                    <a href="{{route('bookcreate')}}" class="edit btn btn-success btn-sm">{{ __('messages.book_add') }}</a>
                                </div>
                                    @endif
                            </div>
                            <table class="table table-bordered data-table">
                                <thead>
                                    <tr>
                                        <th>{{ __('messages.book_no') }}</th>
                                        <th>{{ __('messages.book_title') }}</th>
                                        <th>{{ __('messages.book_level') }}</th>
                                        @if(Auth::user()->user_type == 1)
                                            <th width="105px">{{ __('messages.book_action') }}</th>
                                        @endif
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>

                    </body>
                </div>
            </div>
        </div>
</x-app-layout>
<div class="jumbotron text-center mt-3" style="margin-bottom:0">
    <p>Footer</p>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $.noConflict();

        var commonColumns = [
            { data: 'Id', name: 'Id' },
            { data: 'Book', name: 'Book' },
            { data: 'Level', name: 'Level' },
        ];
        var actionColumn = { data: 'action', name: 'action', orderable: false, searchable: false };

        var table = $('.data-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('bookview') }}",
            columns: @if(Auth::user()->user_type == 1)
            [...commonColumns, actionColumn]
            @else
                commonColumns
            @endif
        });

    });
</script>
