@extends('templates.default')
@section('content')
    <h1>Immagini per {{$album->album_name}}</h1>
    @if(session()->has('message'))
        @component('components.alert-info')
        {{session()->get('message')}}
        @endcomponent
    @endif
<table class="table table-bordered">
    <tr>
        <th>Data creazione</th>
        <th>Titolo</th>
        <th>Album</th>
        <th>Miniatura</th>
    </tr>
    @forelse($images as $image)
    <tr>
       
        <td>{{$image->created_at}}</td>
        <td>{{$image->name}}</td>
        <td>{{$album->album_name}}</td>
        <td>
            <img width="150" src="{{asset($image->img_path)}}" >
        </td>
        <td width="200px">
            <a href="{{route('photos.edit', $image->id)}}" class="btn btn-sm btn-default">Modifica</a>
            <a href="{{route('photos.destroy', $image->id)}}" class="btn btn-sm btn-danger">Cancella</a>
        </td>
    </tr>
    @empty
        <tr><td colspan="5">Nessuna immagine disponibile</td></tr>
    @endforelse
    <tr>
        <td colspan="6">
            {{$images->links('vendor.pagination.bootstrap-4')}}
        </td>
    </tr>
</table>
@endsection
@section('footer')
    @parent
    <script>
        $('document').ready(function(){
            //$('div.alert').fadeOut(3000);
            $('table').on('click','a.btn-danger', function(ele){
                ele.preventDefault();
                var urlAlbum = $(this).attr('href');
                var tr = ele.target.parentNode.parentNode;
                //alert(urlAlbum);
                $.ajax(urlAlbum,
                {
                    method: 'DELETE',
                    data : {
                        '_token' : '{{csrf_token()}}'
                    },
                    complete: function(resp){
                        console.log(resp);
                        if(resp.responseText == 1){
                            //alert(resp.responseText);
                            tr.parentNode.removeChild(tr);
                        } else {
                            alert('stanno i problemi');
                        }
                    }
                });
            });
        });
    </script>
@endsection