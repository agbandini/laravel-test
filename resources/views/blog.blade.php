@extends('templates/default')

@section('title','bloggggg')
	@section('content')
		<h1>blog</h1>

		@component('components/card',[
			'img_url' 	=> 'http://lorempixel.com/400/200/',
			'img_title' => 'immagine blog',
		])
		<p>tanto va la gatta al lardo...</p>
		@endcomponent

		@component('components/card')
			@slot('img_url', 'http://lorempixel.com/400/200/')
			@slot('img_title', 'ciao')
			<p>tanto va la gatta al lardo...</p>
		@endcomponent
	@endsection
        @include('components/card',[
			'img_url' 	=> 'http://lorempixel.com/400/200/',
			'img_title' => 'immagine blog',
                        'slot' => 'asd'
		])
    @section('footer')
	@parent
	<script>
		alert('blog');
	</script>
    @endsection