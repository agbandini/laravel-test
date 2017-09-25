@extends('templates.default')
@section('content')
<h1>
@if($photo->id)
        Update Image
            @else
            New Image
@endif
</h1>
@include('partials.inputerrors')
@if($photo->id)
    <form action="{{route('photos.update', $photo->id)}}" method="POST" enctype="multipart/form-data">
     {{method_field('PATCH')}}  
@else
    <form action="{{route('photos.store')}}" method="POST" enctype="multipart/form-data">
@endif
    {{csrf_field()}}
   <div class="form-group">
       <label>Name</label>
       <input required required type="text" name="name" id="name" class="form-control" placeholder="Photo name" value="{{$photo->name}}">
   </div>
   <div class="form-group">
       <select required name="album_id" id="album_id">
           <option value="">Seleziona Album</option>
           @foreach($albums as $item)
           <option {{$item->id == $album->id?'selected':''}} value="{{$item->id}}">{{$item->album_name}}</option>
           @endforeach           
       </select>

   </div>
    
    @include('images/partials/fileUpload')
   <div class="form-group">
       <label>Description</label>
       <textarea required type="text" name="description" id="description" class="form-control" placeholder="img description">{{$photo->description}}</textarea>
   </div>
    <button type="submit" class="btn btn-primary" >Invia</button>
</form>
@endsection