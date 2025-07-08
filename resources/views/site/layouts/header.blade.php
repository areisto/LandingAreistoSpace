<header class="position-fixed bg-white w-100 my-auto py-4">
  <div class="container">
    <div class="d-flex align-items-center justify-content-between gap-2">
      <a href="{{ route('home') }}"><img src="{{ asset('images/logo.png')}}" alt="ariesto" width="160px" height="61px" /></a>
      <nav class="d-flex align-items-center gap-4 d-none d-lg-flex">
        <a href="#home" class="nav-link-cstm"><span class="no-wrap-text">الرئيسة</span></a>
        <a href="#about" class="nav-link-cstm"><span class="no-wrap-text">من نحن</span></a>
        <a href="#how-it-works" class="nav-link-cstm"><span class="no-wrap-text">كيف نعمل</span></a>
        <a href="#subscriptions" class="nav-link-cstm"><span class="no-wrap-text">الاشتراكات</span></a>
        <a href="#testimonials" class="nav-link-cstm"><span class="no-wrap-text">اراء العملاء</span></a>
      </nav>
      <div class="d-flex align-items-center gap-2">
        <button class="secondary-cstm-button d-none d-sm-block">تسجيل دخول</button>
        <a href="https://spaces.areisto.com/login" class="primary-cstm-button d-none d-sm-block">ابدأ مجانا</a>
        @include('site.layouts.mobile-menu')
      </div>
    </div>
  </div>
</header>
