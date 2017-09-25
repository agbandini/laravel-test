@extends('templates.default')
@section('content')
    <h1>Albums</h1>
    @if(session()->has('message'))
        @component('components.alert-info')
        {{session()->get('message')}}
        @endcomponent
    @endif
    <form>
        <input type="hidden" name="_token" id="_token" value="{{csrf_token()}}">
    
    <ul class="list-group">
    @foreach($albums as $album)

    <li class="list-group-item justify-content-between">{{$album->id}} - {{$album->album_name}} 
        @if($album->album_thumb)
            <!-- per info su $album->path si riferisce alla funzione getPathAttribute definita nel model -->
            <img src="{{asset($album->path)}}" width="120" height="120" alt="{{$album->album_name}}" title="{{$album->album_name}}">
        @endif        
        <div>
        <a title="Add picture" href="{{route('photos.create')}}?album_id={{$album->id}}" class="btn btn-success">
            Add picture
        </a>
        @if($album->photos_count)
        <a href="/albums/{{$album->id}}/images" class="btn btn-success">({{$album->photos_count}}) Vedi immagini</a>
        @endif
        <a href="/albums/{{$album->id}}/edit" class="btn btn-primary">Modifica</a>
        <a href="/albums/{{$album->id}}" class="btn btn-danger elimina">Cancella</a>
        </div>
    </li>
    @endforeach
    <li>
        {{$albums->links('vendor.pagination.bootstrap-4')}}
    </li>
    </ul>
    </form>
@endsection
@section('footer')
    @parent
    <script>
        $('document').ready(function(){
            $('div.alert').fadeOut(3000);
            $('ul').on('click','.elimina', function(ele){
                ele.preventDefault();
                var urlAlbum = $(this).attr('href');
                var li = ele.target.parentNode.parentNode;
                //alert(urlAlbum);
                $.ajax(urlAlbum,
                {
                    method: 'DELETE',
                    data : {
                        '_token' : $('#_token').val()
                    },
                    complete: function(resp){
                        if(resp.responseText == 1){
                            alert(resp.responseText);
                            li.parentNode.removeChild(li);
                        } else {
                            alert('stanno i problemi');
                        }
                    }
                });
            });
        });
    </script>
@endsection