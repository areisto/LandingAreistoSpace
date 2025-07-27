<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>@yield('title', 'Areisto')</title>
  <link rel="icon" href="{{ asset('favicon.svg') }}" type="image/svg+xml">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.rtl.min.css" integrity="sha384-Xbg45MqvDIk1e563NLpGEulpX6AvL404DP+/iCgW9eFa2BqztiwTexswJo2jLMue" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Island+Moments&family=Tajawal:wght@200;300;400;500;700;800;900&display=swap" rel="stylesheet">
  @vite(['resources/scss/app.scss', 'resources/js/app.js'])
  @stack('scripts')
  <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "CoworkingSpace",
      "name": "Areisto Space",
      "url": "https://areistospace.com/",
      "logo": "https://areistospace.com/images/logo.png",
      "description": "Areisto Space هو موقع يقدم مساحات عمل مشتركة حديثة مجهزة بكافة الخدمات لتلبية احتياجات الشركات والأفراد.",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "شارع الكنز، مجمع شراب، طابق 6",
        "addressLocality": "غزة",
        "addressRegion": "غزة",
        "postalCode": "",
        "addressCountry": "فلسطين"
      },
      "telephone": "‪+970567772520‬",
      "email": "areistoco@gmail.com",
      "sameAs": [
        "https://www.facebook.com/Areisto",
        "https://www.linkedin.com/company/areisto"
      ],
      "openingHours": "Mo-Fr 08:00-18:00"
    }
  </script>
</head>
<body>
    @include('site.layouts.header')
    <main>
        @yield('content')
    </main>
    @include('site.layouts.footer')

    <script>
    document.addEventListener("DOMContentLoaded", function () {
      const sections = document.querySelectorAll("section[id]");
      const navLinks = document.querySelectorAll(".nav-link-cstm");
      function onScroll() {
        let currentSectionId = "";
        sections.forEach(section => {
          const sectionTop = section.offsetTop - 100;
          if (window.scrollY >= sectionTop) {
            currentSectionId = section.getAttribute("id");
          }
        });
        navLinks.forEach(link => {
          link.classList.remove("active-cstm");
          if (link.getAttribute("href") === "#" + currentSectionId) {
            link.classList.add("active-cstm");
          }
        });
      }
      window.addEventListener("scroll", onScroll);
      navLinks.forEach(link => {
        link.addEventListener("click", function (e) {
          e.preventDefault();
          const targetId = this.getAttribute("href").substring(1);
          const targetSection = document.getElementById(targetId);
          if (targetSection) {
            window.scrollTo({
              top: targetSection.offsetTop - 80, // adjust based on header height
              behavior: "smooth"
            });
          }
        });
      });
      onScroll();
    });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.min.js" integrity="sha384-7qAoOXltbVP82dhxHAUje59V5r2YsVfBafyUDxEdApLPmcdhBPg1DKg1ERo0BZlK" crossorigin="anonymous"></script>
</body>
</html>
