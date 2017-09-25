@extends('templates.default')
@section('content')
<h1>edit album</h1>
@include('partials.inputerrors')
<form action="/albums/{{$album->id}}" method="POST" enctype="multipart/form-data">
    {{csrf_field()}} 
    <input type="hidden" name="_method" value="PATCH">
   <div class="form-group">
       <label>Name</label>
       <input type="text" name="name" id="name" class="form-control" placeholder="Album name" value="{{old('name',$album->album_name)}}">
   </div>
    @include('albums/partials/fileUpload')
   <div class="form-group">
       <label>Description</label>
       <textarea type="text" name="description" id="description" class="form-control" placeholder="Album description" >{{old('description',$album->description)}}</textarea>
   </div>
    <button type="submit" class="btn btn-primary" >Invia</button>
</form>
@endsection