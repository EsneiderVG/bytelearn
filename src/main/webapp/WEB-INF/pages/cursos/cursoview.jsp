<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cursos Python</title>
  <link rel="stylesheet" href="/css/cursos/main.css">
  <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha384-Z99tn9+g1M1kbw0q33mZXd7LIhyXf3gyfG1vzO+FoC9PPjgx/9OTe7DfvWiEmV8g" crossorigin="anonymous">
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    import {
      Collapse,
      initTE,
    } from "tw-elements";

    initTE({ Collapse });
  </script>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
</head>

<body>

<%@ include file="../../plantillas/header_cursos.jsp" %>

  <div class="container mx-auto container-content row-flex">
    <div class="content-left-side mx-4 my-2 rounded-md">

      <div class="topic-side flex flex-row items-center gap-4 justify-start py-4 px-6 rounded-t-lg
      ">

        <i class="fa-solid fa-arrow-right"></i>
        <h2 class="">Content</h2>
        <i class="fa-solid fa-power-off ml-auto mr-4"></i>
      </div>

      <div class="item-content-left mar-content-lr mt-4">
        <!-- <div class="title-t py-4">
          <span>Introduccion (Fundamentos basicos)</span>
          <i class="fa-solid fa-power-off ml-auto mr-4"></i>
        </div> -->
        <div class="content-t">

          <div class="mx-auto rounded py-4">
            <!-- What is term -->
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>


              </div>

            </div>

            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
              </div>
            </div>

            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4 my-6">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>


              </div>

            </div>
            <div class="transition rounded grid min-w-full	">
              <!-- header -->
              <div class="accordion-header cursor-pointer transition flex space-x-5 px-5 items-center h-16">
                <h3>Introduccion a los metodos postmapping y getmapping?</h3>
                <i class="fas fa-plus ml-auto mr-4"></i>
              </div>
              <!-- Content -->
              <div class="accordion-content px-5 pt-0 overflow-hidden max-h-0 mt-4 flex flex-col gap-4">

                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>
                <div class="">
                  <i class="fa-solid fa-file-zipper"></i>
                  <span>Item name</span>
                </div>


              </div>

            </div>

          </div>

        </div>

      </div>
    </div>
    <div class="content-right-side my-2 rounded-md">

      <iframe class="video-vs" src="https://www.youtube.com/embed/ladwC6Lrs-M" title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen></iframe>

      <div class="flex justify-evenly p-4 background">
        <span><i class="fa-solid fa-star-and-crescent"></i>Descripcion</span>
        <span><i class="fa-solid fa-star-and-crescent"></i>Anotaciones</span>
        <span><i class="fa-solid fa-star-and-crescent"></i>Informacion</span>
        <span><i class="fa-solid fa-star-and-crescent"></i>Informacion</span>
      </div>
      <div class="with-auto-80">
        <div class="flex justify-between py-5 mx-15">

          <div>
            <p class="my-4">Instructor</p>
            <div class="flex">
              <img
                src="https://www.mundodeportivo.com/alfabeta/hero/2020/12/all-might-4.jpg?width=768&aspect_ratio=16:9&format=nowebp"
                alt="instructor" class="rounded-full img-instructor">

              <div class="ml-6 mb-2">
                <p class="text-lg	">Neider velez gomez</p>
                <p>Desarollador full-stack</p>
                <button class="mt-2 bg-blue-500 hover:bg-blue-700 text-white text-sm	 py-2 px-4 rounded">Seguir en link</button>
              </div>

            </div>
          </div>
          <div>
            <p class="my-4">
              Relacionado con este Curso
            </p>
            <p>
              <i class="fa-solid fa-file-zipper"></i>
              Materiales de ayuda - Mostrar todo
            </p>
            <p>
              <i class="fa-solid fa-file-zipper"></i>
              Materiales de ayuda - Mostrar todo
            </p>

          </div>

        </div>

        <div class="flex-col justify-around">
          <h2><strong>Detalles del curso</strong></h2>
          <div class="flex-row gap-8 items-center	">
            <span>2 h 11 min *</span>
            <span>Principiante *</span>
            <span>Publicado: 17/3/2021 *</span>
          </div>
          <div class="flex-row gap-2 my-4">
            <span>4.8</span>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <span>(3222)</span>
          </div>
          <p>
            Aprende a desarrollar aplicaciones informáticas en cualquier lenguaje de programación con este curso en el que te explicamos, de la manera más clara y directa posible, cuáles son los componentes comunes a cualquier lenguaje y cuáles son los pasos que tienes que dar para convertir cualquier idea en tu cabeza en una aplicación informática.
          </p>
        </div>

        <!-- seccion de usuarios watched -->
        <div class="flex mt-5 items-center">
          <!-- <div class="section-img-users" style="width: fit-content;">
            <img src="https://a-static.besthdwallpaper.com/toshinori-yagi-of-boku-no-hero-academia-wallpaper-1400x1050-1987_21.jpg" class="img-users-see rounded-full" alt="image users">
            <img src="https://static.displate.com/280x392/displate/2020-03-17/a0ccf7915d21020b6c09330832bbfdf5_26fe19f1c0ebd2f3d1bcf3cebee7fc64.jpg" class="img-users-see rounded-full -translate-x-6" alt="image users">
            <img src="https://a-static.besthdwallpaper.com/my-hero-academia-all-might-minimalist-wallpaper-1400x1050-57186_21.jpg" class="img-users-see rounded-full -translate-x-12" alt="image users">
          </div> -->
          <span class="text-sm mr-5">2355 miembros recomiendan este curso</span>
          <span class="text-sm">2355 han empezado el curso</span>
          
        </div>
        <!-- item back video - seccion de videos sugeridos etc -->
        <div class="flex-col mt-6">
          <h1>Cursos relacionados</h1>

          <div class="curse-item flex mt-5">
            <img class="rounded img-course" src="https://e1.pxfuel.com/desktop-wallpaper/853/787/desktop-wallpaper-online-courses-online-learning.jpg" alt="course" >
            <div class="ml-4 w-full	">
              <p class="text-sm">CURSO</p>
              <p>Fundamentos en la programacion de springboot</p>

              <div class="flex justify-between pt-3" style="width: 100%;">
                <span class="text-xs">50.797 usuarios</span> <span><i class="fa-solid fa-star"></i></span>
              </div>

            </div>
          </div>
          <!-- item  -->
          <div class="curse-item flex mt-5">
            <img class="rounded img-course" src="https://e1.pxfuel.com/desktop-wallpaper/853/787/desktop-wallpaper-online-courses-online-learning.jpg" alt="course" >
            <div class="ml-4 w-full	">
              <p class="text-sm">CURSO</p>
              <p>Fundamentos en la programacion de springboot</p>

              <div class="flex justify-between pt-3" style="width: 100%;">
                <span class="text-xs">50.797 usuarios</span> <span><i class="fa-solid fa-star"></i></span>
              </div>

            </div>
          </div>
          <!-- item  --> 
        </div>
        <div class="flex my-4">
          <label for="filter_comments">
            Filtrar por:
          </label>
          <select name="" id="filter_comments" class="ml-4" 
          style="background: transparent; border: 2px solid white;">
            <option value="">Por Bytes</option>
            <option value="">Option 2</option>
          </select>
        </div>

        <!-- comments -->
        <div class="flex-col p-6 rounded" style="border: 2px solid white;">
          <div class="flex items-center">
            <img src="https://e1.pxfuel.com/desktop-wallpaper/853/787/desktop-wallpaper-online-courses-online-learning.jpg" alt="img-user" class="rounded-full img-users-see">
            <div class="name-app ml-4">
              <p>Miguel angel castro</p>
              <p>Analista de software</p>
            </div>
          </div>
          <div class="flex-row gap-2 my-4">
            <span>4.8</span>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <span>(3222)</span>
          </div>
          <p></p>
          <div class="flex gap-8">
            <div>
              <i class="fa-solid fa-star"></i>
              Util
            </div>
            <div>
              <i class="fa-solid fa-star"></i>
              Denunciar
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- footer  -->
  <%@ include file="../../plantillas/footer.jsp" %>


  <script src="header.js"></script>
  <script>
    const accordionHeader = document.querySelectorAll(".accordion-header");
    accordionHeader.forEach((header) => {
      header.addEventListener("click", function () {
        const accordionContent = header.parentElement.querySelector(".accordion-content");
        let accordionMaxHeight = accordionContent.style.maxHeight;

        // Condition handling
        if (accordionMaxHeight == "0px" || accordionMaxHeight.length == 0) {
          accordionContent.style.maxHeight = `${accordionContent.scrollHeight + 32}px`;
          header.querySelector(".fas").classList.remove("fa-plus");
          header.querySelector(".fas").classList.add("fa-minus");
          header.parentElement.classList.add("bg-[#00304d]");
        } else {
          accordionContent.style.maxHeight = `0px`;
          header.querySelector(".fas").classList.add("fa-plus");
          header.querySelector(".fas").classList.remove("fa-minus");
          header.parentElement.classList.remove("bg-[#00304d]");
        }
      });
    });
  </script>
</body>

</html>


<!-- <div>
  <p>Cursos Relacionados</p>
  <img
    src="https://www.mundodeportivo.com/alfabeta/hero/2020/12/all-might-4.jpg?width=768&aspect_ratio=16:9&format=nowebp"
    width="60" height="60" alt="">
  <p>Programacion orientada a pyhon</p>
  <p><strong>BYTELEARN</strong></p>
</div> -->