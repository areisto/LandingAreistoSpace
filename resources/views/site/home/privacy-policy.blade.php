@extends('site.layouts.app')

@section('title', "Areisto - سياسة الخصوصية")


@section('content')
  <article class="privacy-container" lang="en" dir="ltr">
    <div class="container">
        <section>
          <h1 class="mb-0">Privacy Policy – Areisto Space</h1>
          <p class="pt-0">Last Updated: {{ \Carbon\Carbon::parse($content->updated_at)->format('F d, Y') }}</p>
          <div class="mt-3 text-justify">{!! $content->body !!}</div>
        </section>
    </div>
  </article>
@endsection

