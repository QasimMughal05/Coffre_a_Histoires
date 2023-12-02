@extends('layout')

@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Create Word') }}
        </h2>
    </x-slot>
	<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

<div class="container">
	@if (session('Error'))
		<div class="alert alert-success" role="alert">
			{{ session('Error') }}
		</div>
	@endif
		<div class="row">
			<div class="col-6 mx-auto">
					<form method="post" action="" enctype="multipart/form-data">
						@if ($errors->any())
						    <div class="alert alert-danger">
						        <ul>
						            @foreach ($errors->all() as $error)
						                <li>{{ $error }}</li>
						            @endforeach
						        </ul>
						    </div>
						@endif
						@csrf
						<div class="form-group">
							<label for="exampleInputEmail1">Word</label>
							<input type="text" class="form-control" id="productName" aria-describedby="productName" name="product_name" value="{{old('product_name')}}">
						</div>
						<div class="form-row">
                            <div class="form-group col-md-6">
                            <label for="inputState">Level</label>
                            <select id="inputState" class="form-control" name="level">
                                <option name="H1">H1</option>
                                <option name="H2">H2</option>
                            </select>
                            </div>
                        </div>
						
                        <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optradio">LPC
                        </label>
                        </div>
                        <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optradio">LSF
                        </label>
                        </div>
                        <div class="form-group mt-3">
							<label for="exampleInputEmail1">Illustrations</label>
						  <div class="custom-file">
                          <input id="input-2" name="input2[]" type="file" class="file"  data-show-upload="false" data-show-caption="true" multiple>
							</div>
						</div>
                        <div class="form-group mt-3">
							<label for="exampleInputEmail1">LSF</label>
						  <div class="custom-file">
                          <input id="input-2" name="input2[]" type="file" class="file"  data-show-upload="false" data-show-caption="true">
							</div>
						</div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                            <label for="inputState">Book</label>
                            <select id="inputState" class="form-control" name="level">
                                <option name="H1">Book 1</option>
                                <option name="H2">Book 2</option>
                            </select>
                            </div>
                        </div>
						<br>
					  	<button type="submit" class="btn btn-primary">Submit</button>
					  	<!-- <th><a href="" class="btn btn-primary">Back</a></th> -->
					</form>
			</div>
		</div>
    </div>
    </div>
            </div>
        </div>
    </div>
</x-app-layout>


<div class="jumbotron text-center mt-3" style="margin-bottom:0">
    <p>Footer</p>
</div>



@endsection