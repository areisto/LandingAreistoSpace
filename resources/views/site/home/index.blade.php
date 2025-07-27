@extends('site.layouts.app')

@section('title', "Areisto - صفحة الهبوط")


@section('content')
  <section id="home" class="home-section">
    <div class="home-container">
      <h1 class="home-title">تحكم في مساحتك بسهولة !</h1>
      <p class="home-desc">
        منصة متكاملة لإدارة مساحات العمل، تتيح لك تنظيم الحجوزات، متابعة توفر المكاتب، الكهرباء، الإنترنت، والخدمات المرافقة بكل سلاسة. صممت لتناسب احتياجات الشركات الصغيرة، المستقلين، والفرق الناشئة
      </p>
      <div class="d-flex flex-column flex-sm-row align-items-center justify-content-center gap-4 mt-4">
        <a href="https://dashboard.areistospace.com/login" class="primary-cstm-button" style="width: 190px">ابدأ مجانا</a>
        <a href="https://play.google.com/store/apps/details?id=gaza.aristospace" target="_blank" class="primary-cstm-button d-flex align-items-center" style="background: #000">
          <span class="me-2">تنزيل التطبيق منGoogle Play</span>
          <img src="{{ asset('images/gp.svg')}}" alt="google-play" width="24" height="24" />
        </a>
      </div>
      <div class="mt-4">
        <img src="{{ asset('images/home.png')}}" alt="home-img" class="home-img-style" />
      </div>
    </div>
  </section>
  <section id="about" class="about-section">
    <div class="container">
      <div class="about-container">
        <div class="d-flex flex-column flex-lg-row align-items-center gap-4 mb-4">
          <div>
            <p class="sub-title">من نحن</p>
            <h1 class="title">تحكّم كامل بمساحات عملك من مكان واحد</h1>
            <p class="desc">
              لوحة تحكم ذكية لإدارة حجوزاتك، غرفك، ومرافقك مثل الكهرباء والإنترنت — كلّها من منصة واحدة سهلة وسريعة.
            </p>
            <div class="mt-4">
              <div class="d-flex align-items-center gap-2 mb-3">
                <img src="{{ asset('images/check.svg')}} " />
                <p class="item">إدارة متكاملة للحجوزات اليومية والأسبوعية والشهرية</p>
              </div>
              <div class="d-flex align-items-center gap-2 mb-3">
                <img src="{{ asset('images/check.svg')}} " />
                <p class="item">تنظيم الغرف: اجتماعات، مكاتب خاصة، أقسام مخصصة </p>
              </div>
              <div class="d-flex align-items-center gap-2 mb-3">
                <img src="{{ asset('images/check.svg')}} " />
                <p class="item">تتبّع الطلبات من مختلف أنواع العملاء (طلاب، مستقلين، شركات...) </p>
              </div>
            </div>
          </div>
          <img src="{{ asset('images/about.png')}}" alt="home-img" class="about-img-style" />
        </div>
        <div class="d-flex flex-column flex-lg-row align-items-center gap-4 mt-5">
          <img src="{{ asset('images/about2.png')}}" alt="about" class="about-img-style" />
          <div>
            <p class="sub-title">من نحن</p>
            <h1 class="title">منصة ذكية لإدارة المساحات بكل سهولة</h1>
            <p class="desc">
              نحن شركة شغوفة بالتطوير والتصميم، جمعنا بين التقنية والفهم العميق لاحتياجات مساحات العمل لنخلق لوحة تحكم ذكية وسهلة الاستخدام. هدفنا نوفر نظام يسهّل إدارة المساحات، من الحجز ومتابعة الطلبات، لتوفير تجربة منظمة وفعالة لأصحاب المساحات والمستخدمين.
              عملنا مش بس برمجة... إحنا صممنا كل تفصيلة بعناية عشان تخدمك وتخلي إدارة المساحات أبسط، أسرع، وأكتر احترافية.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="how-it-works" class="how-it-works-section">
    <div class="how-it-works-container">
      <div class="container">
        <div class="header-container">
          <p class="sub-title">كيف نعمل</p>
          <h1 class="title">كيف نعمل !</h1>
          <p class="desc">
            بنبسطلك كل خطوة! من وقت ما تحجز من التطبيق، لحد ما يتم تأكيد الحجز في لوحة التحكم – كل شي مترابط وسهل وسريع
          </p>
        </div>
        <div class="row flex-column flex-lg-row gap-4 mt-5">
          <div class="col-12 col-lg-5">
            <div class="row gap-2">
              <div class="col-auto">
                <div class="timeline-vertical">
                  <div class="step active">
                    <div class="circle">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path d="M10.76 2C10.28 2 9.90002 2.38 9.90002 2.86V11.32H13.57L12 9.75C11.71 9.46 11.71 8.98 12 8.69C12.29 8.4 12.77 8.4 13.06 8.69L15.9 11.54C16.19 11.83 16.19 12.31 15.9 12.6L13.06 15.45C12.91 15.6 12.72 15.67 12.53 15.67C12.34 15.67 12.15 15.6 12 15.45C11.71 15.16 11.71 14.68 12 14.39L13.56 12.83H9.90002V21.16C9.90002 21.63 10.28 22.02 10.76 22.02C16.65 22.02 20.76 17.91 20.76 12.02C20.76 6.13 16.64 2 10.76 2Z" fill="#FDFDFD"/>
                        <path d="M3.98999 11.3201C3.57999 11.3201 3.23999 11.6601 3.23999 12.0701C3.23999 12.4801 3.57999 12.8201 3.98999 12.8201H9.88999V11.3201H3.98999Z" fill="#FDFDFD"/>
                      </svg>
                    </div>
                    <div class="line"></div>
                  </div>
                  <div class="step">
                    <div class="circle">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path d="M11.01 20.02C15.9861 20.02 20.02 15.9861 20.02 11.01C20.02 6.03391 15.9861 2 11.01 2C6.03391 2 2 6.03391 2 11.01C2 15.9861 6.03391 20.02 11.01 20.02Z" fill="#5BC4AD"/>
                        <path d="M21.99 18.95C21.66 18.34 20.96 18 20.02 18C19.31 18 18.7 18.29 18.34 18.79C17.98 19.29 17.9 19.96 18.12 20.63C18.55 21.93 19.3 22.22 19.71 22.27C19.77 22.28 19.83 22.28 19.9 22.28C20.34 22.28 21.02 22.09 21.68 21.1C22.21 20.33 22.31 19.56 21.99 18.95Z" fill="#5BC4AD"/>
                      </svg>
                    </div>
                    <div class="line"></div>
                  </div>
                    <div class="step">
                    <div class="circle">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path d="M18 3H6C3.79 3 2 4.78 2 6.97V17.03C2 19.22 3.79 21 6 21H18C20.21 21 22 19.22 22 17.03V6.97C22 4.78 20.21 3 18 3ZM8.5 7.17C9.77 7.17 10.81 8.21 10.81 9.48C10.81 10.75 9.77 11.79 8.5 11.79C7.23 11.79 6.19 10.75 6.19 9.48C6.19 8.21 7.23 7.17 8.5 7.17ZM12.37 16.66C12.28 16.76 12.14 16.82 12 16.82H5C4.86 16.82 4.72 16.76 4.63 16.66C4.54 16.56 4.49 16.42 4.5 16.28C4.67 14.6 6.01 13.27 7.69 13.11C8.22 13.06 8.77 13.06 9.3 13.11C10.98 13.27 12.33 14.6 12.49 16.28C12.51 16.42 12.46 16.56 12.37 16.66ZM19 16.75H17C16.59 16.75 16.25 16.41 16.25 16C16.25 15.59 16.59 15.25 17 15.25H19C19.41 15.25 19.75 15.59 19.75 16C19.75 16.41 19.41 16.75 19 16.75ZM19 12.75H15C14.59 12.75 14.25 12.41 14.25 12C14.25 11.59 14.59 11.25 15 11.25H19C19.41 11.25 19.75 11.59 19.75 12C19.75 12.41 19.41 12.75 19 12.75ZM19 8.75H14C13.59 8.75 13.25 8.41 13.25 8C13.25 7.59 13.59 7.25 14 7.25H19C19.41 7.25 19.75 7.59 19.75 8C19.75 8.41 19.41 8.75 19 8.75Z" fill="#5BC4AD"/>
                      </svg>
                    </div>
                    <div class="line"></div>
                  </div>
                  <div class="step">
                    <div class="circle">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path d="M16 2H8C4.5 2 3 4 3 7V17C3 20 4.5 22 8 22H16C19.5 22 21 20 21 17V7C21 4 19.5 2 16 2ZM8 12.25H12C12.41 12.25 12.75 12.59 12.75 13C12.75 13.41 12.41 13.75 12 13.75H8C7.59 13.75 7.25 13.41 7.25 13C7.25 12.59 7.59 12.25 8 12.25ZM16 17.75H8C7.59 17.75 7.25 17.41 7.25 17C7.25 16.59 7.59 16.25 8 16.25H16C16.41 16.25 16.75 16.59 16.75 17C16.75 17.41 16.41 17.75 16 17.75ZM18.5 9.25H16.5C14.98 9.25 13.75 8.02 13.75 6.5V4.5C13.75 4.09 14.09 3.75 14.5 3.75C14.91 3.75 15.25 4.09 15.25 4.5V6.5C15.25 7.19 15.81 7.75 16.5 7.75H18.5C18.91 7.75 19.25 8.09 19.25 8.5C19.25 8.91 18.91 9.25 18.5 9.25Z" fill="#5BC4AD"/>
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="d-flex flex-column gap-5">
                  <div class="text-box">
                    <h3 class="item-title">تسجيل الدخول / إنشاء حساب</h3>
                    <p class="item-dsc">المستفيد بيسجل دخوله أو ينشئ حساب جديد بكل سهولة من التطبيق</p>
                  </div>
                  <div class="text-box">
                    <h3 class="item-title">تصفح و اختيار المساحة وتقديم الحجز</h3>
                    <p class="item-dsc">يختار نوع الاشتراك أو الغرفة المناسبة (يومي، أسبوعي، شهري...)، ويعبّي البيانات المطلوبة.</p>
                  </div>
                  <div class="text-box">
                    <h3 class="item-title">مراجعة الطلب من الإدارة</h3>
                    <p class="item-dsc">الطلب بيوصل مباشرة للوحة التحكم، وهناك بيتم مراجعته والموافقة أو الرفض حسب التوافر</p>
                  </div>
                  <div class="text-box">
                    <h3 class="item-title">تأكيد الحجز يدويًا  </h3>
                    <p class="item-dsc">بعد الموافقة، بيوصل إشعار للمستخدم بتأكيد الحجز، وبيتم الحضور والدفع مباشرة</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <img src="{{ asset('images/how-it-works.png')}}" alt="how it works" class="how-it-works-img-style" />
          </div>
        </div>
      </div>
    </div>
  </section>
  @if($clients && !empty($clients) && count($clients) > 0)
    <section id="subscriptions">
      <div class="subscriptions-container">
        <div class="container">
          <div class="d-flex align-items-center justify-content-around p-4">
            <h1>ماذا قال عملائنا عنا ؟</h1>
            <p class="desc">لأن رضاهم هو <span ca>أكبر إنجازاتنا</span>، سمعنا رأيهم... وها
              هم يشاركون تجربتهم بكل صدق</p>
          </div>
          <div class="embla mt-5">
            <div class="embla__controls">
              <div class="embla__buttons">
                <button class="embla__button embla__button--prev" type="button">
                  <svg class="embla__button__svg" viewBox="0 0 532 532">
                    <path
                      fill="currentColor"
                      d="M176.34 520.646c-13.793 13.805-36.208 13.805-50.001 0-13.785-13.804-13.785-36.238 0-50.034L330.78 266 126.34 61.391c-13.785-13.805-13.785-36.239 0-50.044 13.793-13.796 36.208-13.796 50.002 0 22.928 22.947 206.395 206.507 229.332 229.454a35.065 35.065 0 0 1 10.326 25.126c0 9.2-3.393 18.26-10.326 25.2-45.865 45.901-206.404 206.564-229.332 229.52Z"
                    ></path>
                  </svg>
                </button>
                <button class="embla__button embla__button--next" type="button">
                  <svg class="embla__button__svg" viewBox="0 0 532 532">
                    <path
                      fill="currentColor"
                      d="M355.66 11.354c13.793-13.805 36.208-13.805 50.001 0 13.785 13.804 13.785 36.238 0 50.034L201.22 266l204.442 204.61c13.785 13.805 13.785 36.239 0 50.044-13.793 13.796-36.208 13.796-50.002 0a5994246.277 5994246.277 0 0 0-229.332-229.454 35.065 35.065 0 0 1-10.326-25.126c0-9.2 3.393-18.26 10.326-25.2C172.192 194.973 332.731 34.31 355.66 11.354Z"
                    ></path>
                  </svg>
                </button>
              </div>
            </div>
            <div class="embla__viewport">
              <div class="embla__container">
                @foreach($clients as $client)
                  <div class="embla__slide">
                    <div class="embla__slide__number">
                      <div class="embla__slide__content">
                        <img src={{ asset($client['imageLink'])}} alt="testimonial" class="testimonial-img" />
                        <div>
                          <h4 class="testimonial-author">{{ $client['name_ar'] }}</h4>
                          <p>{{ $client['job_title'] }}</p>
                        </div>
                      </div>
                      <p>{!! $client['content'] !!}</p>
                      <div class="testimonial-rating">
                        <p class="">{{ $client['name_en'] }}</p>
                        <svg xmlns="http://www.w3.org/2000/svg" width="104" height="20" viewBox="0 0 104 20" fill="none">
                          <path d="M10 15.77L16.18 19.5L14.54 12.47L20 7.74L12.81 7.13L10 0.5L7.19 7.13L0 7.74L5.46 12.47L3.82 19.5L10 15.77Z" fill="#FACC15"/>
                          <path d="M38 15.77L44.18 19.5L42.54 12.47L48 7.74L40.81 7.13L38 0.5L35.19 7.13L28 7.74L33.46 12.47L31.82 19.5L38 15.77Z" fill="#FACC15"/>
                          <path d="M66 15.77L72.18 19.5L70.54 12.47L76 7.74L68.81 7.13L66 0.5L63.19 7.13L56 7.74L61.46 12.47L59.82 19.5L66 15.77Z" fill="#FACC15"/>
                          <path d="M94 15.77L100.18 19.5L98.54 12.47L104 7.74L96.81 7.13L94 0.5L91.19 7.13L84 7.74L89.46 12.47L87.82 19.5L94 15.77Z" fill="#FACC15"/>
                        </svg>
                      </div>
                    </div>
                  </div>
                @endforeach
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  @endif
  @if (!empty($plans) && count($plans) > 0)
    <section id="support" class="support-section">
      <div class="container">
        <div class="text-center mb-5">
          <p class="sub-title">الدعم المالي</p>
          <h1 class="title">ساهم في تمكين الطلاب من الحصول على مساحات عمل مجانية</h1>
          <p class="desc">
          من خلال مساهمتك، نوفر مساحات عمل مجانية للطلاب الذين لا يستطيعون تحمل تكاليفها.  
          اختر الباقة التي ترغب في دعمها، وحدد عدد الاشتراكات، وسنقوم بتوجيه دعمك بالكامل لتوفير بيئة تعليمية وإبداعية مناسبة للطلاب.
          </p>
        </div>
        <div class="row  mb-4">
          @foreach($plans as $plan)
            <div class="col-12 col-md-4 mb-3">
              <div class="plan-card {{ $loop->first ? 'active' : '' }}" data-price="{{ $plan['price'] }}" data-type="{{ $plan['type'] }}">
                <h4>{{ $plan['type'] }}</h4>
                <p>{{ $plan['price'] }}$</p>
                <small class="text-muted">لكل طالب</small>
              </div>
            </div>
          @endforeach
        </div>
        <div class="support-form">
          <div class="counter-box">
            <label for="quantity">عدد الاشتراكات:</label>
            <div class="counter">
              <button id="decrement">-</button>
              <input type="number" id="quantity" value="1" min="1" />
              <button id="increment">+</button>
            </div>
          </div>
          <div class="price-box">
            <p>السعر النهائي: <span id="totalPrice">10</span>$</p>
          </div>
          <form action="{{ route('crosspay.redirect') }}" method="POST" target="_blank" id="donation-form">
            @csrf
            <input type="hidden" name="total" id="totalInput" />
            <input type="hidden" name="plan" id="plan" />
            <input type="hidden" name="quantity" id="quantityInputHidden" />
            <div class="text-center mt-3">
              <button type="submit" class="primary-cstm-button" id="supportNow">ادعم الآن</button>
            </div>
          </form>
        </div>
      </div>
    </section>
  @endif
  @include('site.components.contact-form')

  @push('scripts')
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const planCards = document.querySelectorAll('.plan-card');
    const quantityInput = document.getElementById('quantity');
    const totalPriceEl = document.getElementById('totalPrice');
    const incrementBtn = document.getElementById('increment');
    const decrementBtn = document.getElementById('decrement');
    const supportBtn = document.getElementById('supportNow');
    const totalInput = document.getElementById('totalInput');
    const planInput = document.getElementById('plan');
    const donationForm = document.getElementById('donation-form');
    const quantityHiddenInput = document.getElementById('quantityInputHidden');
    let selectedPrice = 10;
    let selectedPlan = 'daily';
    const defaultCard = document.querySelector('.plan-card[data-type="daily"]');
    if (defaultCard) {
      defaultCard.classList.add('active');
    }
    function updateTotal() {
      const quantity = parseInt(quantityInput.value) || 1;
      const total = quantity * selectedPrice;
      totalPriceEl.textContent = total;
      totalInput.value = total;
    }
    planCards.forEach(card => {
      card.addEventListener('click', () => {
        planCards.forEach(c => c.classList.remove('active'));
        card.classList.add('active');
        selectedPrice = parseFloat(card.dataset.price);
        selectedPlan = card.dataset.type;
        updateTotal();
        supportBtn.disabled = false;
        planInput.value = selectedPlan;
      });
    });
    incrementBtn.addEventListener('click', () => {
      quantityInput.value = parseInt(quantityInput.value) + 1;
      updateTotal();
    });
    decrementBtn.addEventListener('click', () => {
      const current = parseInt(quantityInput.value);
      if (current > 1) {
        quantityInput.value = current - 1;
        updateTotal();
      }
    });
    quantityInput.addEventListener('input', updateTotal);
    donationForm.addEventListener('submit', function (e) {
      const quantity = parseInt(quantityInput.value) || 1;
      totalInput.value = quantity * selectedPrice;
      const activeCard = document.querySelector('.plan-card.active');
      if (activeCard) {
        planInput.value = activeCard.dataset.type;
      }
      quantityHiddenInput.value = quantity;
    });
    updateTotal();
    planInput.value = selectedPlan;
  });
</script>
@endpush

@endsection