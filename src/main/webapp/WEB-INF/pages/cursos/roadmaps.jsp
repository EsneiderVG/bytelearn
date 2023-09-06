<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="/img/terzo.svg">
    <link rel="stylesheet" href="/css/cursos/roadmaps.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha384-Z99tn9+g1M1kbw0q33mZXd7LIhyXf3gyfG1vzO+FoC9PPjgx/9OTe7DfvWiEmV8g" crossorigin="anonymous">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs/themes/prism.css">
    <script src="https://cdn.jsdelivr.net/npm/prismjs/prism.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/prismjs/components/prism-java.min.js"></script>
    <link rel="stylesheet" href="/css/components/popup.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="text-black">

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    
    <div class="loading-animation">
      <div class="loader"></div>
      <p class="text-white">Cargando...</p>
  </div>

    <!-- Wrapper-->
    <div class="content wrapper py-10">
        <div class="flex-col items-center gap-6">
          <div class="flex justify-between items-center pr-6">

            <div class="flex items-center mx-4 text-white">
              <img src="/img/java.svg" style="width: 60px; height: 60px;" alt="">
              <div class="flex items-center">
                <h3 class="text-4xl ml-2 font-bold">Java</h3>
                <span class="text-base mx-4">in</span>
                <h3 class="text-4xl">POO</h3>
              </div>
  
              <span class="ml-12"> <i class="fa-solid fa-user mr-2"></i> 100.234 estudiantes</span>
            </div>
          </div>
          

          <div class="mb-4 mx-4 border-b border-gray-200 dark:border-gray-700">
            <ul class="flex flex-wrap -mb-px text-xl text-center text-white" id="myTab" data-tabs-toggle="#myTabContent" role="tablist">

                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 rounded-t-lg tabs-page" id="profile-tab" data-tabs-target="#about" type="button" role="tab" aria-controls="profile" aria-selected="false"><i class="fa-solid fa-earth-americas mr-2"></i>Acerca de</button>
                </li>
                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 border-transparent rounded-t-lg tabs-page" id="dashboard-tab" data-tabs-target="#aprende" type="button" role="tab" aria-controls="dashboard" aria-selected="false"><i class="fa-solid fa-code mr-2"></i> Aprende ya mismo</button>
                </li>
                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 border-transparent rounded-t-lg tabs-page" id="settings-tab" data-tabs-target="#practice" type="button" role="tab" aria-controls="settings" aria-selected="false"><i class="fa-solid fa-graduation-cap mr-2"></i>Practicas</button>
                </li>
                
            </ul>
        </div>
        <div id="myTabContent">
            <!-- About of ruta -->
            <div class="hidden p-4" id="about" role="tabpanel" aria-labelledby="profile-tab">
                
              <div class="flex items-center text-white mb-6 gap-4">
                <span>Agrega practicas Colaborador :D</span>
                <button data-modal-target="abouted" data-modal-toggle="abouted" class="button-edit p-2 rounded-lg text-white text-center cursor-pointer bg-[#30a6eb]"><i class="fa-solid fa-plus mr-2"></i>Add About it</button>
              </div>

              <div class="flex items-center p-4 rounded-lg gap-12 bg-gray-50 dark:bg-gray-800">
                <div>
                  <h2 class="text-2xl font-bold my-2">About</h2>
                  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cumque, consectetur consequuntur! Autem sint repellat porro in laborum exercitationem aspernatur, nesciunt velit. Tenetur aliquam aperiam nesciunt officiis, excepturi odit beatae ea.
                  Cupiditate repudiandae iste nisi optio excepturi accusamus perspiciatis tenetur ex labore, ab facere recusandae officia maxime numquam corrupti iusto, praesentium vitae dolorum! Qui eaque in doloremque minus odio nemo quibusdam!
                  Voluptates tempora dignissimos blanditiis sapiente molestiae eum vitae omnis quasi, libero dolorem, eligendi ex iste ad quis commodi expedita vel? Quidem mollitia dicta qui saepe vero explicabo dolorum quo fuga!</p>
                </div>
                <div class="coding-container rounded-lg">
<pre style="background: white;"><code class="language-java py-0" >
public class HelloWorld {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}
</code></pre>
                </div>

              </div>

            </div>

            <!-- Container of aprende ya mismo -->
            <div class=" hidden p-4 pt-0 rounded-lg bg-gray-50 dark:bg-gray-800" id="aprende" role="tabpanel" aria-labelledby="dashboard-tab" style="background: none;">
                
              <div class="flex items-center text-white mb-6 gap-4">
                <span>Agrega contenido Colaborador :D</span>
                <button id="btn-abrir-popup" class="button-edit p-2 rounded-lg text-white text-center cursor-pointer bg-[#30a6eb]"><i class="fa-solid fa-plus mr-2"></i>Add Keyword</button>
              </div>

              <!-- Content grid -->
              <div class="box-border max-w-7xl sm:columns-1 md:columns-1 lg:columns-3 xl:columns-2">
                <!-- Card-->
                
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="/cursos/roadmap" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                </article>
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                </article>
                <!-- Close Card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- End Card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                </article>
                <!-- Close card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- Close card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- End Card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- End Card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg" style="border: 4px solid black; padding: 10px;">Basic</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Conceptos basicos</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- Close Card -->
          
                <!-- Card-->
                <article class="mb-4 break-inside rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border p-4">
                  <div class="flex pb-6 items-center justify-between">
                    <div class="flex">
                      <a class="inline-block mr-4" href="#">
                        <h3 class="rounded-lg text-base" style="border: 4px solid black; padding: 10px;">Medio-Avanzado</h3>
                      </a>
                      <div class="flex flex-col">
                        <div>
                          <a class="inline-block text-lg font-bold dark:text-white" href="#">Deployment en amazon services ec2</a>
                        </div>
                        <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                          introduccion Syntaxis
                        </div>
                      </div>
                    </div>
                  </div>
                  <h2 class="text-2xl font-bold dark:text-white">
                    Conceptos temas:
                  </h2>
                  
                  <p class="dark:text-slate-200">
                    
                  </p>
                  <ul>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno</li>
                    <li>Convicciones</li>
                    <li>Syntaxis basica</li>
                    <li>Variables</li>
                    <li>Variables de entorno </li>
                    <li>Convicciones</li>
                  </ul>
                  <a href="#" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]">Explorar</a>
                  
                </article>
                <!-- End Card -->
              </div>
            </div>
            <!-- End Wrapper-->

            
            <div class="hidden p-4 rounded-lg bg-transparent" id="practice" role="tabpanel" aria-labelledby="settings-tab">
              
              
              <div class="flex items-center text-white mb-6 gap-4">
                <span>Agrega practicas Colaborador :D</span>
                <button data-modal-target="practica" data-modal-toggle="practica" class="button-edit p-2 rounded-lg text-white text-center cursor-pointer bg-[#30a6eb]"><i class="fa-solid fa-plus mr-2"></i>Add Practices</button>
              </div>

              <div class="grid grid-rows-2 grid-flow-col gap-4">
                <div class="w-full p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                  <a href="#">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Gedo supermarket</h5>
                  </a>
                  <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                  <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                      Read more
                      <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                      </svg>
                  </a>
                </div>
                <div class="w-full p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                  <a href="#">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Gedo calculator</h5>
                  </a>
                  <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                  <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                      Read more
                      <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                      </svg>
                  </a>
                </div>
                <div class="w-full p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                  <a href="#">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Gedo game 1960</h5>
                  </a>
                  <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                  <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                      Read more
                      <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                      </svg>
                  </a>
                </div>
                <div class="w-full p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                  <a href="#">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Gedo pokemons </h5>
                  </a>
                  <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                  <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                      Read more
                      <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                      </svg>
                  </a>
                </div>
              </div>


            </div>
        </div>

        </div>
    </div>
    
    <c:import url="popups/crearKeywords.jsp">
        <c:param name="selected" value="Welcome to Page 1"/>
        <c:param name="x" value="python"/>
    </c:import>   

    <c:import url="popups/crearPractica.jsp">
        <c:param name="title" value="Agrega practicas"/>
        <c:param name="butValue" value="practica"/>
    </c:import>  

    <c:import url="popups/crearAbout.jsp">
        <c:param name="title" value="Agrega descripcion general"/>
        <c:param name="butValue" value="abouted"/>
    </c:import>  
    

    <%@ include file="../../plantillas/footer.jsp" %>
    
    <script src="assets/js/script.js"></script>
    <script src="/js/roadmaps.js"></script>
    <script src="/js/header.js"></script>
    <script src="/js/popup.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
    <script>
      Prism.highlightAll();
    </script>
</body>
</html>