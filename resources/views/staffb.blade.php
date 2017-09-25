@extends('templates/default')
@section('title', $titolo)

@section('content')
<h1>
{{$titolo}} ma veramente blade
</h1>

@if ($staff)
	<ul>
	@foreach($staff as $persona)
		<li> {{$loop->remaining}}  {{$loop->last}} {{$persona['nome']}} {{$persona['cognome']}}</li>
	@endforeach
	</ul>
@else	
	<p>no staff</p>
@endif

<ul>
@forelse($staff as $persona)
	<li style="{{$loop->first ? 'color:red' : ''}}">{{$persona['nome']}} {{$persona['cognome']}}</li>
@empty
	<li>no staff</li>
@endforelse
</ul>
<h2>for</h2>
@for($i=0; $i<count($staff); $i++)
{{$staff[$i]['nome']}}<br>
@endfor
<h2>while</h2>
@while($persona = array_shift($staff))
{{$persona['nome']}}<br>
@endwhile

@endsection