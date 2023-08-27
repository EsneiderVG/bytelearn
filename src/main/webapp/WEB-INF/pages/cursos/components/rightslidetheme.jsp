<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<c:if test="${typeSection == 1}">
    <div class="cursos-viewer">
        <iframe class="video-vs" src="https://www.youtube.com/embed/ladwC6Lrs-M" title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen></iframe>

      <div class="tab-curse flex justify-evenly p-4 background" id="myTab" data-tabs-toggle="#myTabContent" role="tablist">

          <span id="descripcion-tab" data-tabs-target="#descripcion" type="button" role="tab" aria-controls="descripcion" aria-selected="false" ><i class="fa-solid fa-star-and-crescent" ></i>Descripcion</span>
  
          <span id="anotaciones-tab" data-tabs-target="#anotaciones" type="button" role="tab" aria-controls="anotaciones" aria-selected="false"><i class="fa-solid fa-star-and-crescent" ></i>Anotaciones</span>
  
          <span id="informacion-tab" data-tabs-target="#informacion" type="button" role="tab" aria-controls="informacion" aria-selected="false"><i class="fa-solid fa-star-and-crescent"></i>Informacion</span>
          <span id="informaciontwo-tab" data-tabs-target="#informaciontwo" type="button" role="tab" aria-controls="informaciontwo" aria-selected="false"><i class="fa-solid fa-star-and-crescent"></i>Informacion 2</span>

      </div>

      <div id="myTabContent">

        <div class="with-auto-80" id="descripcion" role="tabpanel" aria-labelledby="profile-tab">
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
          
        <div id="myTabContent">
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Profile tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Dashboard tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="settings" role="tabpanel" aria-labelledby="settings-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Settings tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="contacts" role="tabpanel" aria-labelledby="contacts-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Contacts tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
        </div>
          <!-- seccion de usuarios watched -->
          <div class="flex mt-5 items-center">
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
        <div class="anotaciones" id="anotaciones" role="tabpanel" aria-labelledby="dashboard-tab">
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores consequuntur dolore debitis, rem voluptatem deleniti expedita sit at eius perspiciatis doloremque vero, dolorum quisquam quo deserunt laborum a sed mollitia?
          Ullam est necessitatibus, quisquam ducimus accusamus distinctio laboriosam praesentium! Nesciunt, voluptatum. Odit quibusdam amet accusamus nesciunt at eum perspiciatis dignissimos quam quo numquam suscipit est, mollitia ducimus expedita, ea cumque!
          Temporibus recusandae expedita officia quae accusantium accusamus officiis aspernatur minus autem adipisci vero sunt ipsam labore voluptas provident nisi quidem optio nam dignissimos maiores in, quam corrupti laboriosam! Excepturi, totam.
          Velit nemo inventore illo? Facilis labore, ullam aut ipsam incidunt, inventore hic sit perspiciatis iure rerum dignissimos mollitia autem itaque impedit voluptatem eum. Delectus animi dolor eius quis dolores tenetur!
          Accusamus quo id nobis alias distinctio. In doloribus aut officiis, consectetur molestiae laborum incidunt sequi quia rem reiciendis iste tempore culpa. Vero, illo impedit velit ut eligendi sapiente. Accusantium, quia.</p>
        </div>
        <div class="informacion" id="informacion" role="tabpanel">
          <span>Informacion Lorem, ipsum dolor sit amet consectetur adipisicing elit. Provident debitis aut qui, earum, consequatur quidem excepturi tempora et reiciendis dignissimos dolore ratione repellat totam ex nam quisquam? Modi, nobis quod?
          Magnam repellendus architecto optio quos reprehenderit modi consequatur mollitia, facere officiis, et quia nisi eum voluptas! Perferendis labore, quaerat ipsum, maxime consequuntur vel, distinctio nihil fugiat sunt voluptatum perspiciatis in.
          Quasi officia, unde voluptate aliquid ducimus consectetur at tenetur earum itaque ipsa. Aliquid rem ullam ipsum neque architecto recusandae dignissimos facilis, alias reprehenderit est hic, ea totam aspernatur unde? Rerum!</span>
        </div>
        <div class="informacion2" id="informaciontwo" role="tabpanel">
          <span>Informacion 2 Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores dolores est ratione hic expedita unde voluptas, nemo voluptatem itaque ipsa rerum omnis voluptatum consectetur facere? Omnis, explicabo. Suscipit, dolores eum?
          Exercitationem velit vero harum error, commodi rem facilis temporibus officia molestiae eum soluta voluptas obcaecati. Placeat veniam ducimus hic quam autem asperiores minima ab qui sequi, sed porro modi quis!
          Qui debitis cupiditate et veritatis accusantium quos? Reiciendis nihil animi corporis quo, tempore non, quos cupiditate quae quas accusamus eius eum voluptas perferendis voluptatem earum. Magni incidunt unde reiciendis saepe.
          Animi vel nesciunt, quo totam fuga necessitatibus dolorem accusamus laboriosam modi, beatae a? Obcaecati vel assumenda quos ratione? Quae fugit odit dolore ipsum quisquam quos omnis hic perspiciatis, eveniet soluta.
          Qui tenetur corporis ea commodi maiores rerum recusandae expedita, suscipit architecto culpa. Veniam quis obcaecati reiciendis voluptates officia quod ex. Amet tempore excepturi commodi labore consectetur quae laborum, obcaecati accusamus.</span>
        </div>
      </div> 
    </div>
</c:if>
<c:if test="${typeSection == 2}">
    
</c:if>