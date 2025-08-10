<footer id="footer">
  <div class="footer-container">
    <div class="container">
      <div class="nav-container">
        <div class="row align-items-md-center justify-content-between gap-4">
          <div class="col-auto">
            <a href="{{ route('home') }}"><img src="{{ asset('images/logo.png')}}" alt="ariesto" width="160px" height="61px" /></a>
            <div class="d-flex align-items-center gap-4 mt-2">
              <a href="#"><img src="{{ asset('images/in.svg')}}" alt="linked-in" class="social-icon" /></a>
              <a href=#><img src="{{ asset('images/insta.svg')}}" alt="instagram" class="social-icon" /></a>
              <a href="#"><img src="{{ asset('images/fb.svg')}}" alt="facebook" class="social-icon" /></a>
            </div>
          </div>
          <div class="col-auto">
            <h3 class="title">القائمة</h3>
            <div class="d-flex flex-column gap-3 mt-4">
              <a href="#about" class="item"><span>من نحن</span></a>
              <a href="#how-it-works" class="item"><span>كيف نعمل</span></a>
              <a href="#subscriptions" class="item"><span>الاشتراكات</span></a>
              <a href="#testimonials" class="item"><span>اراء عملائنا</span></a>
              <a href="{{ route('privacy') }}" class="item"><span>سياسة الخصوصية</span></a>
              <a href="{{ route('contact') }}" class="item"><span>الدعم الفني</span></a>
            </div>
          </div>
          <div class="col-auto">
            <h3 class="title">التواصل</h3>
            <div class="d-flex flex-column gap-3 mt-4">
              <p class="item">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                  <path d="M20.62 8.45C19.57 3.83 15.54 1.75 12 1.75C12 1.75 12 1.75 11.99 1.75C8.46 1.75 4.42 3.82 3.37 8.44C2.2 13.6 5.36 17.97 8.22 20.72C9.28 21.74 10.64 22.25 12 22.25C13.36 22.25 14.72 21.74 15.77 20.72C18.63 17.97 21.79 13.61 20.62 8.45ZM12 13.46C10.26 13.46 8.85 12.05 8.85 10.31C8.85 8.57 10.26 7.16 12 7.16C13.74 7.16 15.15 8.57 15.15 10.31C15.15 12.05 13.74 13.46 12 13.46Z" fill="#FDFDFD"/>
                </svg>
                <span>العنوان غزة شارع الكنز مجمع شراب ط 6</span>
              </p>
              <p class="item">
                <a href="https://wa.me/970567772520" target="_blank" style="text-decoration:none; color:inherit;">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                    <path d="M11.05 14.95L9.2 16.8C8.81 17.19 8.19 17.19 7.79 16.81C7.68 16.7 7.57 16.6 7.46 16.49C6.43 15.45 5.5 14.36 4.67 13.22C3.85 12.08 3.19 10.94 2.71 9.81C2.24 8.67 2 7.58 2 6.54C2 5.86 2.12 5.21 2.36 4.61C2.6 4 2.98 3.44 3.51 2.94C4.15 2.31 4.85 2 5.59 2C5.87 2 6.15 2.06 6.4 2.18C6.66 2.3 6.89 2.48 7.07 2.74L9.39 6.01C9.57 6.26 9.7 6.49 9.79 6.71C9.88 6.92 9.93 7.13 9.93 7.32C9.93 7.56 9.86 7.8 9.72 8.03C9.59 8.26 9.4 8.5 9.16 8.74L8.4 9.53C8.29 9.64 8.24 9.77 8.24 9.93C8.24 10.01 8.25 10.08 8.27 10.16C8.3 10.24 8.33 10.3 8.35 10.36C8.53 10.69 8.84 11.12 9.28 11.64C9.73 12.16 10.21 12.69 10.73 13.22C10.83 13.32 10.94 13.42 11.04 13.52C11.44 13.91 11.45 14.55 11.05 14.95Z" fill="#FDFDFD"/>
                    <path d="M21.97 18.33C21.97 18.61 21.92 18.9 21.82 19.18C21.79 19.26 21.76 19.34 21.72 19.42C21.55 19.78 21.33 20.12 21.04 20.44C20.55 20.98 20.01 21.37 19.4 21.62C19.39 21.62 19.38 21.63 19.37 21.63C18.78 21.87 18.14 22 17.45 22C16.43 22 15.34 21.76 14.19 21.27C13.04 20.78 11.89 20.12 10.75 19.29C10.36 19 9.97001 18.71 9.60001 18.4L12.87 15.13C13.15 15.34 13.4 15.5 13.61 15.61C13.66 15.63 13.72 15.66 13.79 15.69C13.87 15.72 13.95 15.73 14.04 15.73C14.21 15.73 14.34 15.67 14.45 15.56L15.21 14.81C15.46 14.56 15.7 14.37 15.93 14.25C16.16 14.11 16.39 14.04 16.64 14.04C16.83 14.04 17.03 14.08 17.25 14.17C17.47 14.26 17.7 14.39 17.95 14.56L21.26 16.91C21.52 17.09 21.7 17.3 21.81 17.55C21.91 17.8 21.97 18.05 21.97 18.33Z" fill="#FDFDFD"/>
                  </svg>
                  <span dir="ltr">+970567772520</span>
                </a>
              </p>
              <p class="item">
                <a href="mailto:areistoco@gmail.com" style="text-decoration:none; color:inherit;">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                    <path d="M17 3.5H7C4 3.5 2 5 2 8.5V15.5C2 19 4 20.5 7 20.5H17C20 20.5 22 19 22 15.5V8.5C22 5 20 3.5 17 3.5ZM17.47 9.59L14.34 12.09C13.68 12.62 12.84 12.88 12 12.88C11.16 12.88 10.31 12.62 9.66 12.09L6.53 9.59C6.21 9.33 6.16 8.85 6.41 8.53C6.67 8.21 7.14 8.15 7.46 8.41L10.59 10.91C11.35 11.52 12.64 11.52 13.4 10.91L16.53 8.41C16.85 8.15 17.33 8.2 17.58 8.53C17.84 8.85 17.79 9.33 17.47 9.59Z" fill="#FDFDFD"/>
                  </svg>
                  <span>areistoco@gmail.com</span>
                </a>
              </p>
            </div>
          </div>
          <div class="col-12 col-md-4">
            <h3 class="title">اشترك معنا ليصلك كل جديد</h3>
            <form method="POST" action="javascript:void(0)" id="newsletterFormFooter">
              @csrf
              <label for="email" class="my-3">بريدك الالكتروني</label>
              <div class="subscribe-form">
                <input type="email" id="email" name="email" placeholder="example@gmail.com" required />
                <button type="submit">اشترك</button>
              </div>
              <div id="formResponseFooter" class="w-100"></div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <hr style="border: none; border-top: 2px solid #434E58; margin: 0px;">
    <div class="container py-2">
      <div class="d-flex align-items-center justify-content-between">
        <p class="copy-write-title">شركة اريستو للبرمجيات</p>
        <p class="copy-write">@ شركة اريستو للبرمجيات</p>
      </div>
    </div>
  </div>
</footer>

<script>
  document.getElementById('newsletterFormFooter').addEventListener('submit', function(event) {
      event.preventDefault();

      const form = event.target;
      const formData = new FormData(form);
      const csrfToken = form.querySelector('input[name="_token"]').value;
      fetch('{{ route('newsletter.subscribe') }}', {
          method: 'POST',
          headers: {
              'X-CSRF-TOKEN': csrfToken,
              'Accept': 'application/json',
          },
          body: formData,
      })
      .then(response => {
          if (!response.ok) {
              throw response;
          }
          return response.json();
      })
      .then(data => {
          let message = '';
          if (data.success) {
            message = `<h6 class="pt-2 fs-6 text-success">${data.success}</h6>`;
          }
          document.getElementById('formResponseFooter').innerHTML = message;
          setTimeout(() => {
            document.getElementById('formResponseFooter').innerHTML = '';
          }, 10000);
      })
      .catch(async (errorResponse) => {
          let message = '<div>';
          if (errorResponse.status === 422) {
              const errorData = await errorResponse.json();
              for (let error in errorData.errors) {
                  message += '<h6 class="pt-2 text-danger">' + errorData.errors[error] + '</h6>';
              }
          } else {
            message += '<h6 class="sml-font pt-2 text-danger">حدث خطأ ما. يرجى المحاولة مرة أخرى</h6>';
          }
          message += '</div>';
          document.getElementById('formResponseFooter').innerHTML = message;

          setTimeout(() => {
              document.getElementById('formResponseFooter').innerHTML = '';
          }, 10000);
      });
  });
  </script>
