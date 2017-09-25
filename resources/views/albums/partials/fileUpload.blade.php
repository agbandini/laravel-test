    <div class="form-group">
       <label>Album thumb</label>
       <input type="file" name="album_thumb" id="album_thumb" class="form-control" placeholder="Album thumb" value="{{$album->album_thumb}}">
   </div>
    @if($album->album_thumb)
   <div class="form-group">
        <!-- per info su $album->path si riferisce alla funzione getPathAttribute definita nel model -->
        <img src="{{asset($album->path)}}" alt="{{$album->album_name}}" title="{{$album->album_name}}">
   </div>    
    @endif