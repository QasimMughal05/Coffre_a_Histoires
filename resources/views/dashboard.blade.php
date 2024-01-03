@extends('layout')
@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('messages.words') }}
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
                                    <h1>{{ __('messages.word_table') }}</h1>
                                </div>
                                <div class="col">
                                @if(Auth::user()->user_type == 1)
                                    <a href="{{route('createword')}}" class="edit btn btn-success btn-sm">{{ __('messages.word_add') }}</a>
                                @endif
                                    <a href="{{route('bookview')}}" class="edit btn btn-success btn-sm">{{ __('messages.manage_books') }}</a>
                                </div>
                            </div>
                            <table class="table table-bordered data-table ">
                                <thead>
                                    <tr>
                                        <th>{{ __('messages.word_no') }}</th>
                                        <th>{{ __('messages.word_title') }}</th>
                                        <th>{{ __('messages.word_level') }}</th>
                                        <th>{{ __('messages.word_lang') }}</th>
                                        <th width="105px">{{ __('messages.word_action') }}</th>
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
        var table = $('.data-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('wordview') }}",
            columns: [
                { data: 'id', name: 'id' },
                { data: 'word', name: 'word' },
                { data: 'level', name: 'level' },
                { data: 'Language', name: 'Language' },
                { data: 'action', name: 'action', orderable: false, searchable: false },
            ]

        });

    });
</script>
