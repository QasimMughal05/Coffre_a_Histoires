@extends('layout')
@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Book View') }}
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
                                    <h1>View table</h1>
                                </div>
                                <div class="col">
                                    <a href="{{route('bookcreate')}}" class="edit btn btn-success btn-sm">Add Book</a>
                                </div>
                            </div>
                            <table class="table table-bordered data-table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>book</th>
                                        <th>level</th>
                                        <th width="105px">Action</th>
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
<script type="text/javascript">
    $(document).ready(function () {
        $.noConflict();
        var table = $('.data-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ route('bookview') }}",
            columns: [
                { data: 'Id', name: 'Id' },
                { data: 'Book', name: 'Book' },
                { data: 'Level', name: 'Level' },
                { data: 'action', name: 'action', orderable: false, searchable: false },
            ]
        });

    });
</script>