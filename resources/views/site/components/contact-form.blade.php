<section id="testimonials" class="contact-section">
  <div class="testimonials-container">
    <div class="container">
      <div class="row align-items-center justify-content-between">
        <div class="col">
          <p class="sub-title">تواصل معنا</p>
          <h1 class="title">ابدا فالتواصل !</h1>
          <form method="POST" action="javascript:void(0)" id="contactUsForm">
            @csrf
            <label for="name" class="text-start">الاسم</label>
            <input name="name" type="text" id="name" placeholder="الاسم" required>
            <label for="email" class="text-start">بريدك الالكتروني</label>
            <input name="email" type="email" id="email" placeholder="example@gmail.com" required>
            <label for="message" class="text-start">رسالتك</label>
            <textarea id="message" name="message" rows="6" placeholder="الرسالة" required></textarea>
            <button type="submit" class="primary-cstm-button">إرسال</button>
          </form>
        </div>
        <div class="col-12 col-lg-auto">
          <div class="contact-info-container">
            <h4>معلومات تواصل اخرى</h4>
            <div class="contact-box">
              <div class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                  <path d="M20.6201 8.45C19.5701 3.83 15.5401 1.75 12.0001 1.75C12.0001 1.75 12.0001 1.75 11.9901 1.75C8.4601 1.75 4.4201 3.82 3.3701 8.44C2.2001 13.6 5.3601 17.97 8.2201 20.72C9.2801 21.74 10.6401 22.25 12.0001 22.25C13.3601 22.25 14.7201 21.74 15.7701 20.72C18.6301 17.97 21.7901 13.61 20.6201 8.45ZM12.0001 13.46C10.2601 13.46 8.8501 12.05 8.8501 10.31C8.8501 8.57 10.2601 7.16 12.0001 7.16C13.7401 7.16 15.1501 8.57 15.1501 10.31C15.1501 12.05 13.7401 13.46 12.0001 13.46Z" fill="#FDFDFD"/>
                </svg>
              </div>
              <div>
                <h5>موقع الشركة</h5>
                <p>العنوان غزة شارع الكنز مجمع شراب ط 6</p>
              </div>
            </div>
            <div class="contact-box">
              <div class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                  <path d="M17 3.5H7C4 3.5 2 5 2 8.5V15.5C2 19 4 20.5 7 20.5H17C20 20.5 22 19 22 15.5V8.5C22 5 20 3.5 17 3.5ZM17.47 9.59L14.34 12.09C13.68 12.62 12.84 12.88 12 12.88C11.16 12.88 10.31 12.62 9.66 12.09L6.53 9.59C6.21 9.33 6.16 8.85 6.41 8.53C6.67 8.21 7.14 8.15 7.46 8.41L10.59 10.91C11.35 11.52 12.64 11.52 13.4 10.91L16.53 8.41C16.85 8.15 17.33 8.2 17.58 8.53C17.84 8.85 17.79 9.33 17.47 9.59Z" fill="#FDFDFD"/>
                </svg>
              </div>
              <div>
                <h5>البريد الالكتروني</h5>
                <p>areistoco@gmail.com</p>
              </div>
            </div>
            <div class="contact-box">
              <div class="icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                  <path d="M11.05 14.95L9.2 16.8C8.81 17.19 8.19 17.19 7.79 16.81C7.68 16.7 7.57 16.6 7.46 16.49C6.43 15.45 5.5 14.36 4.67 13.22C3.85 12.08 3.19 10.94 2.71 9.81C2.24 8.67 2 7.58 2 6.54C2 5.86 2.12 5.21 2.36 4.61C2.6 4 2.98 3.44 3.51 2.94C4.15 2.31 4.85 2 5.59 2C5.87 2 6.15 2.06 6.4 2.18C6.66 2.3 6.89 2.48 7.07 2.74L9.39 6.01C9.57 6.26 9.7 6.49 9.79 6.71C9.88 6.92 9.93 7.13 9.93 7.32C9.93 7.56 9.86 7.8 9.72 8.03C9.59 8.26 9.4 8.5 9.16 8.74L8.4 9.53C8.29 9.64 8.24 9.77 8.24 9.93C8.24 10.01 8.25 10.08 8.27 10.16C8.3 10.24 8.33 10.3 8.35 10.36C8.53 10.69 8.84 11.12 9.28 11.64C9.73 12.16 10.21 12.69 10.73 13.22C10.83 13.32 10.94 13.42 11.04 13.52C11.44 13.91 11.45 14.55 11.05 14.95Z" fill="#FDFDFD"/>
                  <path d="M21.9701 18.33C21.9701 18.61 21.9201 18.9 21.8201 19.18C21.7901 19.26 21.7601 19.34 21.7201 19.42C21.5501 19.78 21.3301 20.12 21.0401 20.44C20.5501 20.98 20.0101 21.37 19.4001 21.62C19.3901 21.62 19.3801 21.63 19.3701 21.63C18.7801 21.87 18.1401 22 17.4501 22C16.4301 22 15.3401 21.76 14.1901 21.27C13.0401 20.78 11.8901 20.12 10.7501 19.29C10.3601 19 9.9701 18.71 9.6001 18.4L12.8701 15.13C13.1501 15.34 13.4001 15.5 13.6101 15.61C13.6601 15.63 13.7201 15.66 13.7901 15.69C13.8701 15.72 13.9501 15.73 14.0401 15.73C14.2101 15.73 14.3401 15.67 14.4501 15.56L15.2101 14.81C15.4601 14.56 15.7001 14.37 15.9301 14.25C16.1601 14.11 16.3901 14.04 16.6401 14.04C16.8301 14.04 17.0301 14.08 17.2501 14.17C17.4701 14.26 17.7001 14.39 17.9501 14.56L21.2601 16.91C21.5201 17.09 21.7001 17.3 21.8101 17.55C21.9101 17.8 21.9701 18.05 21.9701 18.33Z" fill="#FDFDFD"/>
                </svg>
              </div>
              <div>
                <h5>رقم الهاتف</h5>
                <p dir="ltr">+970567772520</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const contactForm = document.getElementById("contactUsForm");

    contactForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const form = event.target;
        const formData = new FormData(form);
        const csrfToken = form.querySelector('input[name="_token"]').value;

        fetch("{{ route('home.contact.submit') }}", {
            method: "POST",
            headers: {
                "X-CSRF-TOKEN": csrfToken,
                "Accept": "application/json"
            },
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                Swal.fire({
                    icon: "success",
                    title: 'تمت العملية بنجاح',
                    text: 'تم إرسال رسالتك بنجاح، سنقوم بالرد عليك قريبًا.',
                    confirmButtonText: "OK"
                });
                contactForm.reset();
            } else {
                Swal.fire({
                    icon: "error",
                    title: 'حدث خطأ، الرجاء المحاولة لاحقًا',
                });
            }
        })
        .catch(error => {
            console.error("Error:", error);
        });
    });
  })
</script>
