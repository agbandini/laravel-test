    <div class="form-group">
       <label>Photo thumb</label>
       <input type="file" name="img_path" id="img_path" class="form-control" placeholder="Photo thumb" value="{{$photo->album_thumb}}">
   </div>
    @if($photo->img_path)
   <div class="form-group">
        <!-- per info su $album->path si riferisce alla funzione getPathAttribute definita nel model -->
        <img src="{{asset($photo->img_path)}}" alt="{{$photo->name}}" title="{{$photo->name}}">
   </div>    
    @endif