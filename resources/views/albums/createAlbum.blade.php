@extends('templates.default')
@section('content')
<h1>Create album</h1>
@include('partials.inputerrors')
<form action="{{route('album-save')}}" method="POST" enctype="multipart/form-data">
    {{csrf_field()}}
   <div class="form-group">
       <label>Name</label>
       <input required type="text" name="name" id="name" class="form-control" placeholder="Album name" value="{{old('name')}}">
   </div>
    @include('albums/partials/fileUpload')
   <div class="form-group">
       <label>Description</label>
       <textarea required type="text" name="description" id="description" class="form-control" placeholder="Album description" >{{old('description')}}</textarea>
   </div>
    <button type="submit" class="btn btn-primary" >Invia</button>
</form>
@endsection