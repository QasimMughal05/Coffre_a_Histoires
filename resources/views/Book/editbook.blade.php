@extends('layout')
@section('content')
<x-app-layout>
	<x-slot name="header">
		<h2 class="font-semibold text-xl text-gray-800 leading-tight">
			{{ __('Edit Book') }}
		</h2>
	</x-slot>
	<div class="py-12">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
				<div class="p-6 text-gray-900">
					<div class="container">
						@if (session('error'))
						<div class="alert alert-success" role="alert">
							{{ session('error') }}
						</div>
						@endif
						<div class="row">
							<div class="col-6 mx-auto">
								<form method="post" action="{{ route('updatebook') }}" enctype="multipart/form-data"
									class="mt-6 space-y-6">
                                    <input type="text" name="id" hidden="" value="{{$books->Id}}">
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
										<label for="exampleInputEmail1">Book Name</label>
										<input type="text" class="form-control" aria-describedby="productName"
											name="book" Value="{{$books->Book}}">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Level</label>
										<select id="inputState" class="form-control" name="level">
                                            <option name="" value="" {{ $books->Level == '' ? 'selected' : '' }}></option>
                                            <option name="Crêche" value="Crêche" {{ $books->Level == 'Crêche' ? 'selected' : '' }}>Crêche</option>
											<option name="1H" value="1H" {{ $books->Level == '1H' ? 'selected' : '' }}>1H</option>
											<option name="2H" value="2H" {{ $books->Level == '2H' ? 'selected' : '' }}>2H</option>
										</select>
									</div>
									<br>
									<button type="submit" class="btn btn-primary">Save</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</x-app-layout>


<div class="jumbotron text-center mt-3">
	<p>Footer</p>
</div>


@endsection