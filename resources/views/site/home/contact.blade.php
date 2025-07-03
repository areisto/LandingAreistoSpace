@extends('site.layouts.app')

@section('title', "Areisto - الدعم الفني")


@section('content')

<section class="margin-page">
    <div class="container text-center">
        <h2 class="mb-3 fw-bold" data-aos="fade-down">يسعدنا سماع رأيك</h2>
        <p class="fs-5 mb-5 pb-2" data-aos="fade-down">سواء كان لديك سؤال، ملاحظات، أو ترغب في المشاركة، لا تتردد في التواصل معنا على</p>
        @include('site.components.contact-form')
    </div>
</section>

@endsection
