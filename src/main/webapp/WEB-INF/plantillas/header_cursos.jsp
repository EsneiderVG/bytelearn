<link rel="stylesheet" href="/css/plantillas/header_cursos.css">
<header>
    <div class="logo row-flex center-x">
      <img src="/img/gdo-img.png" alt="xd" width="35" />
      <a href="/" class="logo">GDO</a>
    </div>

    <div id="content-origin-searcher"></div>
    <div class="navegation-pages-cont row-flex center-x" id="searcher">
      <label class="searcher-icon" for="search"><i class="fa-solid fa-magnifying-glass"></i></label>
      <input class="searcher-head " type="text" name="search" id="search" placeholder="Buscar contenido">
    </div>

    <div class="navigation">
      <ul class="menu row-flex center-x" id="content-things-responsive">
        <div class="close-btn"></div>
        <div id="insert-search-hid"></div>
        <li class="menu-item"><a href="/index">Home</a></li>
        <li class="menu-item">
          <a class="sub-btn" href="#">Learn <i class="fas fa-angle-down"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"><a href="/cursos">Cursos</a></li>
            <li class="sub-item"><a href="/cursos/roadmap">roadmap</a></li>
            <li class="sub-item"><a href="/cursos/certificate">certificado</a></li>
            <li class="sub-item"><a href="/cursos/view">view</a></li>
          </ul>
        </li>
        <li class="menu-item"><a href="#">Contact</a></li>
        <div class="account-section">
          <img src="${usuario.imagenPerfil}" alt="" class="rounded-full ml-6 h-12 cursor-pointer popup-perfil-head" onclick="toggleSlideover()" title="perfil de usuario">
          <!-- <i class="fa-solid fa-user" ></i> -->
        </div>
      </ul>

    </div>


    <div class="menu-btn"></div>

  </header>

  <!-- Slider de usuario -->
  <div id="slideover-container" class="text-white z-50 w-full h-full fixed inset-0 invisible">
      <div onclick="toggleSlideover()" id="slideover-bg" class="w-full h-full duration-500 ease-out transition-all inset-0 absolute opacity-0">
        
      </div>
      <div  id="slideover" class="slider-account h-full absolute right-0 duration-300 ease-out transition-all translate-x-full">
          <div onclick="toggleSlideover()" class="absolute cursor-pointer text-gray-600 top-0 w-8 h-8 flex items-center justify-center right-0 mt-5 mr-5">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
          </div>
          <div class="mt-6 mr-5 px-4">
            <h2 class="text-base leading-6" id="slide-over-title">
              Perfil de usuario
            </h2>
          </div>

          <div class="flex-col mt-6">
            <img src="${usuario.imagenPerfil}" alt="imagen Perfil" class="img-slide-header">
            <div class="username-act mb-2 p-4">
              <div class="named flex items-center">
                <p class="text-2xl mr-2 tracking-wide font-semibold	"><c:out value="${usuario.username}"/></p>
                <i class="fa-solid fa-circle active-log-user"></i>
              </div>
              <p class="text-sm"><c:out value="${usuario.email}"/></p>
            </div>
            <div class="flex-col gap-6 px-4">
                <a href="/user/${usuario.id}" class="bg-indigo-500 py-2 px-4 rounded-xl	mr-2">
                  Perfil
                </a>
                <a href="/user/${usuario.id}/edit" class="bg-indigo-500 py-2 px-4 rounded-xl	mr-2">
                  Editar perfil
                </a>
              <!-- <button id="dropdownDividerButton" data-dropdown-toggle="dropdownleft" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-3.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button"><svg class="w-2.5 h-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
              </svg></button> -->
            
            <!-- Dropdown menu -->
            <!-- <div id="dropdownleft" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-34 dark:bg-gray-700 dark:divide-gray-600">
                <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDividerButton">
                  <li>
                    <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Dashboard</a>
                  </li>
                  <li>
                    <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Settings</a>
                  </li>
                  <li>
                    <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Earnings</a>
                  </li>
                </ul>
                <div class="py-2">
                  <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Separated link</a>
                </div>
            </div> -->

            </div> 
            <hr class="my-4">
            <div class="actions-slide-account mb-2 px-4">

              <div class="flex items-center text-base">
                <a href="/logout" class="lined-button border border-gray-300  focus:ring-gray-200 font-medium rounded-lg px-5 py-2.5 mr-2 mb-2 ">
                  <i class="fa-solid fa-arrow-right-from-bracket mr-6"></i>
                  <span>Logout</span>
                </a>
              </div>
            </div>

          </div>

      </div>
  </div>


<script src="/js/header.js"></script>
<script src="/js/header-cursos.js"></script>