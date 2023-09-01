<link rel="stylesheet" href="/css/plantillas/header_home.css">
<header>
    <div class="logo row-flex center-x">
      <img src="/img/gdo-img.png" alt="Imagen del logo" width="35" />
      <a href="/" class="logo">GDO</a>
    </div>

    <div class="navigation">
      <ul class="menu row-flex center-x">
        <div class="close-btn"></div>
        <li class="menu-item"><a href="#">Why Edu?</a></li>
        <li class="menu-item">
          <a class="sub-btn" href="#">About Us <i class="fas fa-angle-down"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"><a href="#">Sub Item 01</a></li>
            <li class="sub-item"><a href="#">Sub Item 02</a></li>
            <li class="sub-item"><a href="#">Sub Item 03</a></li>
          </ul>
        </li>
        <li class="menu-item">
          <a class="sub-btn" href="#">Company <i class="fas fa-angle-down"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"><a href="/cursos">Cursos</a></li>
            <li class="sub-item"><a href="/cursos/roadmap">roadmap</a></li>
            <li class="sub-item"><a href="/cursos/certificate">certificado</a></li>
            <li class="sub-item"><a href="/cursos/view">view</a></li>
            <li class="sub-item more">
              <a class="more-btn" href="#">Resource <i class="fas fa-angle-right"></i></a>
              <ul class="more-menu">
                <li class="more-item"><a href="#">More Item 01</a></li>
                <li class="more-item"><a href="#">More Item 02</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="menu-item"><a href="#">Services</a></li>
        <div class="row-flex btns-log-up">
          <c:choose>
            <c:when test="${usuario != null}">
              <li class="menu-item btn-a"><a href="/logout">LogOut</a></li>
            </c:when>
            <c:otherwise>
              <li class="menu-item"><a href="/user/new">Sign Up</a></li>
              <li class="menu-item btn-a"><a href="/login">Login</a></li>
            </c:otherwise>
        </c:choose>

        </div>

      </ul>

    </div>
    <div class="menu-btn"></div>
  </header>