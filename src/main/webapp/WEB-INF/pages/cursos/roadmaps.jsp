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
</head>
<body class="text-black">

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    
      <!-- Wrapper-->
      <div class="wrapper pt-10">
        <div class="flex-col items-center gap-6">
          <div class="flex items-center mx-4 text-white">
            <img src="/img/java.svg" style="width: 60px; height: 60px;" alt="">
            <div class="flex items-center">
              <h3 class="text-4xl ml-2">Java</h3>
              <span class="text-base mx-4">in</span>
              <h3 class="text-4xl">POO</h3>
            </div>
          </div>
          

          <div class="mb-4 mx-4 border-b border-gray-200 dark:border-gray-700">
            <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" id="myTab" data-tabs-toggle="#myTabContent" role="tablist">

                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 rounded-t-lg" id="profile-tab" data-tabs-target="#about" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
                </li>
                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="dashboard-tab" data-tabs-target="#aprende" type="button" role="tab" aria-controls="dashboard" aria-selected="false">Dashboard</button>
                </li>
                <li role="presentation">
                    <button class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="settings-tab" data-tabs-target="#practice" type="button" role="tab" aria-controls="settings" aria-selected="false">Settings</button>
                </li>
                
            </ul>
        </div>
        <div id="myTabContent">
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="about" role="tabpanel" aria-labelledby="profile-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Profile tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
            <div class="body-sect hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="aprende" role="tabpanel" aria-labelledby="dashboard-tab" style="background: none;">
                
              <!-- Content grid -->
        <div class="box-border max-w-7xl mx-4 sm:columns-1 md:columns-2 lg:columns-3 xl:columns-3">
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-12 h-12" src="https://randomuser.me/api/portraits/men/35.jpg" />
                </a>
                <div class="flex flex-col">
                  <div>
                    <a class="inline-block text-lg font-bold dark:text-white" href="#">Wade Warren</a>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300 dark:text-slate-400">
                    July 17, 2018
                  </div>
                </div>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold dark:text-white">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <div class="flex justify-between gap-1 mb-1">
                <a class="flex" href="#">
                  <img class="max-w-full rounded-tl-lg"
                    src="https://images.pexels.com/photos/92866/pexels-photo-92866.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
                <a class="flex" href="#">
                  <img class="max-w-full"
                    src="https://images.pexels.com/photos/247929/pexels-photo-247929.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
                <a class="flex" href="#">
                  <img class="max-w-full rounded-tr-lg"
                    src="https://images.pexels.com/photos/631522/pexels-photo-631522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
              </div>
              <div class="flex justify-between gap-1">
                <a class="flex" href="#">
                  <img class="max-w-full rounded-bl-lg"
                    src="https://images.pexels.com/photos/1429748/pexels-photo-1429748.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
                <a class="flex" href="#">
                  <img class="max-w-full rounded-br-lg"
                    src="https://images.pexels.com/photos/69020/pexels-photo-69020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
              </div>
            </div>
            <p class="dark:text-slate-200">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            
          </article>
    
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/women/9.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Esther Howard</a>
                    <span>
                      <svg class="fill-blue-500 dark:fill-slate-50 w-5 h-5" viewBox="0 0 24 24">
                        <path
                          d="M10,17L5,12L6.41,10.58L10,14.17L17.59,6.58L19,8M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z">
                        </path>
                      </svg>
                    </span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    January 22, 2021
                  </div>
                </div>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <a class="flex" href="#">
                <img class="max-w-full rounded-lg"
                  src="https://images.pexels.com/photos/3682153/pexels-photo-3682153.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
              </a>
            </div>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            <div class="py-4">
              <a class="inline-flex items-center" href="#">
                <span class="mr-2">
                  <svg class="fill-rose-600 dark:fill-rose-400" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path
                      d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z">
                    </path>
                  </svg>
                </span>
                <span class="text-lg font-bold">68</span>
              </a>
            </div>
          </article>
          <!-- Close Card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/men/33.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Leonard Isom</a>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    Medical Assistant
                  </div>
                </div>
              </div>
            </div>
            <div class="py-4">
              <div class="flex justify-between gap-1 mb-1">
                <a class="flex" href="#">
                  <img class="max-w-full rounded-l-lg"
                    src="https://images.pexels.com/photos/2128028/pexels-photo-2128028.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
                <a class="flex" href="#">
                  <img class="max-w-full rounded-r-lg"
                    src="https://images.pexels.com/photos/6145852/pexels-photo-6145852.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </p>
            </div>
            
          </article>
          <!-- End Card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/men/9.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Eduardo</a>
                    <span class="text-slate-500 dark:text-slate-300">25 minutes ago</span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    General Electric
                  </div>
                </div>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </p>
            </div>
          </article>
          <!-- Close card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/women/43.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Anna Bernal</a>
                    <span class="text-slate-500 dark:text-slate-300">Johnson & Johnson</span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    General Electric
                  </div>
                </div>
              </div>
            </div>
            <div class="my-4 flex gap-1">
              <div class="flex flex-col gap-1 flex-1">
                <a class="flex h-2/4" href="#">
                  <img class="w-full h-full rounded-tl-lg object-cover"
                    src="https://images.pexels.com/photos/327331/pexels-photo-327331.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
                <a class="flex h-2/4" href="#">
                  <img class="w-full rounded-bl-lg object-cover"
                    src="https://images.pexels.com/photos/92866/pexels-photo-92866.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
              </div>
              <div class="flex flex-col gap-1 flex-1">
                <a class="flex h-full" href="#">
                  <img class="w-full rounded-tr-lg rounded-br-lg object-cover"
                    src="https://images.pexels.com/photos/247931/pexels-photo-247931.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                </a>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </p>
            </div>

          </article>
          <!-- Close card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside p-6 rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex pb-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/men/32.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Savannah Nguyen</a>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    January 22, 2021
                  </div>
                </div>
              </div>
            </div>
            <h2 class="text-3xl font-extrabold">
              Web Design templates Selection
            </h2>
            <div class="py-4">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
              </p>
            </div>
            <div class="py-4">
              <a class="inline-flex items-center" href="#">
                <span class="mr-2">
                  <svg class="fill-rose-600 dark:fill-rose-400" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path
                      d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z">
                    </path>
                  </svg>
                </span>
                <span class="text-lg font-bold">15</span>
              </a>
            </div>
            <div class="relative">
              <input
                class="pt-2 pb-2 pl-3 w-full h-11 bg-slate-100 dark:bg-slate-600 rounded-lg placeholder:text-slate-600 dark:placeholder:text-slate-300 font-medium pr-20"
                type="text" placeholder="Write a comment" />
              <span class="flex absolute right-3 top-2/4 -mt-3 items-center">
                <svg class="mr-2" style="width: 26px; height: 26px;" viewBox="0 0 24 24">
                  <path fill="currentColor"
                    d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z">
                  </path>
                </svg>
                <svg class="fill-blue-500 dark:fill-slate-50" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                  <path d="M2,21L23,12L2,3V10L17,12L2,14V21Z"></path>
                </svg>
              </span>
            </div>
          </article>
          <!-- End Card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex p-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/women/47.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Annette Black</a>
                    <span class="text-slate-500 dark:text-slate-300">3 minutes ago</span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    Medical Assistant
                  </div>
                </div>
              </div>
            </div>
            <div class="p-6 bg-violet-500">
              <h2 class="text-3xl font-extrabold text-white">
                Web Design templates Selection
              </h2>
            </div>
            <div class="p-6">
              <div class="flex justify-between items-center">
                <a class="inline-flex items-center" href="#">
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/like-2387659-1991059.png" />
                  </span>
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/love-2387666-1991064.png" />
                  </span>
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/haha-2387660-1991060.png" />
                  </span>
                  <span class="text-lg font-bold ml-3">237</span>
                </a>
                <a class="ml-auto" href="#">23 comentarios</a>
              </div>
              <div class="mt-6 mb-6 h-px bg-slate-200"></div>
              <div class="flex items-center justify-between mb-6">
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Me gusta
                </button>
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Comentar
                </button>
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Compartir
                </button>
              </div>
              <div class="relative">
                <input
                  class="pt-2 pb-2 pl-3 w-full h-11 bg-slate-100 dark:bg-slate-600 rounded-lg placeholder:text-slate-600 dark:placeholder:text-slate-300 font-medium pr-20"
                  type="text" placeholder="Write a comment" />
                <span class="flex absolute right-3 top-2/4 -mt-3 items-center">
                  <svg class="mr-2" style="width: 26px; height: 26px;" viewBox="0 0 24 24">
                    <path fill="currentColor"
                      d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z">
                    </path>
                  </svg>
                  <svg class="fill-blue-500 dark:fill-slate-50" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path d="M2,21L23,12L2,3V10L17,12L2,14V21Z"></path>
                  </svg>
                </span>
              </div>
            </div>
          </article>
          <!-- End Card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex p-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/women/33.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Cameron Williamson</a>
                    <span>
                      <svg class="fill-blue-500 dark:fill-slate-50 w-5 h-5" viewBox="0 0 24 24">
                        <path
                          d="M10,17L5,12L6.41,10.58L10,14.17L17.59,6.58L19,8M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z">
                        </path>
                      </svg>
                    </span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    Software Development Manager
                  </div>
                </div>
              </div>
            </div>
            <p class="pr-6 pl-6 pb-6">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            <div class="p-6 bg-gradient-to-r from-cyan-500 to-blue-500">
              <h2 class="text-3xl text-white font-extrabold">
                Lorem ipsum dolor sit amet consectetur adipiscing elit sed do
                eiusmod.
              </h2>
            </div>
            <div class="p-6">
              <a class="inline-flex items-center" href="#">
                <span class="mr-2">
                  <svg class="fill-rose-600 dark:fill-rose-400" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path
                      d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z">
                    </path>
                  </svg>
                </span>
                <span class="text-lg font-bold">68</span>
              </a>
            </div>
            <div class="px-6">
              <div class="relative">
                <input
                  class="pt-2 pb-2 pl-3 w-full h-11 bg-slate-100 dark:bg-slate-600 rounded-lg placeholder:text-slate-600 dark:placeholder:text-slate-300 font-medium pr-20"
                  type="text" placeholder="Write a comment" />
                <span class="flex absolute right-3 top-2/4 -mt-3 items-center">
                  <svg class="mr-2" style="width: 26px; height: 26px;" viewBox="0 0 24 24">
                    <path fill="currentColor"
                      d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z">
                    </path>
                  </svg>
                  <svg class="fill-blue-500 dark:fill-slate-50" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path d="M2,21L23,12L2,3V10L17,12L2,14V21Z"></path>
                  </svg>
                </span>
              </div>
            </div>
            <!-- Comments content -->
            <div class="p-6">
              <!-- Comment row -->
              <div class="media flex pb-4">
                <a class="mr-4" href="#">
                  <img class="rounded-full max-w-none w-12 h-12" src="https://randomuser.me/api/portraits/women/83.jpg" />
                </a>
                <div class="media-body">
                  <div>
                    <a class="inline-block text-base font-bold mr-2" href="#">Kristin Watson</a>
                    <span class="text-slate-500 dark:text-slate-300">25 minutes ago</span>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit seddo
                  </p>
                  <div class="mt-2 flex items-center">
                    <a class="inline-flex items-center py-2 mr-3" href="#">
                      <span class="mr-2">
                        <svg class="fill-rose-600 dark:fill-rose-400" style="width: 22px; height: 22px;"
                          viewBox="0 0 24 24">
                          <path
                            d="M12.1 18.55L12 18.65L11.89 18.55C7.14 14.24 4 11.39 4 8.5C4 6.5 5.5 5 7.5 5C9.04 5 10.54 6 11.07 7.36H12.93C13.46 6 14.96 5 16.5 5C18.5 5 20 6.5 20 8.5C20 11.39 16.86 14.24 12.1 18.55M16.5 3C14.76 3 13.09 3.81 12 5.08C10.91 3.81 9.24 3 7.5 3C4.42 3 2 5.41 2 8.5C2 12.27 5.4 15.36 10.55 20.03L12 21.35L13.45 20.03C18.6 15.36 22 12.27 22 8.5C22 5.41 19.58 3 16.5 3Z">
                          </path>
                        </svg>
                      </span>
                      <span class="text-base font-bold">0</span>
                    </a>
                    <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                      Repply
                    </button>
                  </div>
                </div>
              </div>
              <!-- End comments row -->
              <!-- comments row -->
              <div class="media flex pb-4">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-12 h-12" src="https://randomuser.me/api/portraits/women/74.jpg" />
                </a>
                <div class="media-body">
                  <div>
                    <a class="inline-block text-base font-bold mr-2" href="#">Melvin D. Goodman</a>
                    <span class="text-slate-500 dark:text-slate-300">3 minutes ago</span>
                  </div>
                  <p>Dolor sit ameteiusmod consectetur adipiscing elit.</p>
                  <div class="mt-2 flex items-center">
                    <a class="inline-flex items-center py-2 mr-3" href="#">
                      <span class="mr-2">
                        <svg class="fill-rose-600 dark:fill-rose-400" style="width: 22px; height: 22px;"
                          viewBox="0 0 24 24">
                          <path
                            d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z">
                          </path>
                        </svg>
                      </span>
                      <span class="text-base font-bold">23</span>
                    </a>
                    <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                      Repply
                    </button>
                  </div>
                </div>
              </div>
              <!-- End comments row -->
              <!-- comments row -->
              <div class="media flex pb-4">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-12 h-12" src="https://randomuser.me/api/portraits/men/7.jpg" />
                </a>
                <div class="media-body">
                  <div>
                    <a class="inline-block text-base font-bold mr-2" href="#">Erik Moore</a>
                    <span class="text-slate-500 dark:text-slate-300">3 minutes ago</span>
                  </div>
                  <p>Dolor sit ameteiusmod consectetur adipiscing elit.</p>
                  <div class="py-4">
                    <a class="flex" href="#">
                      <img class="max-w-full rounded-lg"
                        src="https://images.pexels.com/photos/61381/pexels-photo-61381.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
                    </a>
                  </div>
                  <div class="mt-2 flex items-center">
                    <a class="inline-flex items-center py-2 mr-3" href="#">
                      <span class="mr-2">
                        <svg class="fill-rose-600 dark:fill-rose-400" style="width: 22px; height: 22px;"
                          viewBox="0 0 24 24">
                          <path
                            d="M12,21.35L10.55,20.03C5.4,15.36 2,12.27 2,8.5C2,5.41 4.42,3 7.5,3C9.24,3 10.91,3.81 12,5.08C13.09,3.81 14.76,3 16.5,3C19.58,3 22,5.41 22,8.5C22,12.27 18.6,15.36 13.45,20.03L12,21.35Z">
                          </path>
                        </svg>
                      </span>
                      <span class="text-base font-bold">23</span>
                    </a>
                    <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                      Repply
                    </button>
                  </div>
                </div>
              </div>
              <!-- End comments row -->
              <!-- More comments -->
              <div class="w-full">
                <a href="#"
                  class="py-3 px-4 w-full block bg-slate-100 dark:bg-slate-700 text-center rounded-lg font-medium hover:bg-slate-200 dark:hover:bg-slate-600 transition ease-in-out delay-75">Show
                  more comments</a>
              </div>
              <!-- End More comments -->
            </div>
            <!-- End Comments content -->
          </article>
          <!-- Close Card -->
    
          <!-- Card-->
          <article class="mb-4 break-inside rounded-xl bg-white dark:bg-slate-800 flex flex-col bg-clip-border">
            <div class="flex p-6 items-center justify-between">
              <div class="flex">
                <a class="inline-block mr-4" href="#">
                  <img class="rounded-full max-w-none w-14 h-14" src="https://randomuser.me/api/portraits/women/67.jpg" />
                </a>
                <div class="flex flex-col">
                  <div class="flex items-center">
                    <a class="inline-block text-lg font-bold mr-2" href="#">Marylin B. Bechtol</a>
                    <span class="text-slate-500 dark:text-slate-300">3 minutes ago</span>
                  </div>
                  <div class="text-slate-500 dark:text-slate-300">
                    Marketing Coordinator
                  </div>
                </div>
              </div>
            </div>
            <p class="pr-6 pl-6 pb-6">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmodelit sed do eiusmodelit sed do eiusmodelit sed do eiusmod
              <a href="#" class="font-medium text-blue-700 dark:text-blue-500">#ui</a>
              <a href="#" class="font-medium text-blue-700 dark:text-blue-500">#uxui</a>
              <a href="#" class="font-medium text-blue-700 dark:text-blue-500">#userinterface</a>
              <a href="#" class="font-medium text-blue-700 dark:text-blue-500">#webdeveloper</a>
              <a href="#" class="font-medium text-blue-700 dark:text-blue-500">#card</a>
            </p>
            <div class="p-6 bg-yellow-500">
              <h2 class="text-3xl font-extrabold text-black">
                Web Design templates Selection
              </h2>
            </div>
            <div class="p-6">
              <div class="flex justify-between items-center">
                <a class="inline-flex items-center" href="#">
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/like-2387659-1991059.png" />
                  </span>
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/angry-2387661-1991061.png" />
                  </span>
                  <span class="-m-1 rounded-full border-2 border-white dark:border-slate-800">
                    <img class="w-6" src="https://cdn.iconscout.com/icon/free/png-256/wow-2387663-1991062.png" />
                  </span>
                  <span class="text-lg font-bold ml-3">237</span>
                </a>
                <a class="ml-auto" href="#">23 comentarios</a>
              </div>
              <div class="mt-6 mb-6 h-px bg-slate-200"></div>
              <div class="flex items-center justify-between mb-6">
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Me gusta
                </button>
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Comentar
                </button>
                <button class="py-2 px-4 font-medium hover:bg-slate-50 dark:hover:bg-slate-700 rounded-lg">
                  Compartir
                </button>
              </div>
              <div class="relative">
                <input
                  class="pt-2 pb-2 pl-3 w-full h-11 bg-slate-100 dark:bg-slate-600 rounded-lg placeholder:text-slate-600 dark:placeholder:text-slate-300 font-medium pr-20"
                  type="text" placeholder="Write a comment" />
                <span class="flex absolute right-3 top-2/4 -mt-3 items-center">
                  <svg class="mr-2" style="width: 26px; height: 26px;" viewBox="0 0 24 24">
                    <path fill="currentColor"
                      d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z">
                    </path>
                  </svg>
                  <svg class="fill-blue-500 dark:fill-slate-50" style="width: 24px; height: 24px;" viewBox="0 0 24 24">
                    <path d="M2,21L23,12L2,3V10L17,12L2,14V21Z"></path>
                  </svg>
                </span>
              </div>
            </div>
          </article>
          <!-- End Card -->
        </div>
      </div>
      <!-- End Wrapper-->

            </div>
            <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="practice" role="tabpanel" aria-labelledby="settings-tab">
                <p class="text-sm text-gray-500 dark:text-gray-400">This is some placeholder content the <strong class="font-medium text-gray-800 dark:text-white">Settings tab's associated content</strong>. Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling.</p>
            </div>
            
        </div>
      </div>
        
    <%@ include file="../../plantillas/footer.jsp" %>
    
    <script src="assets/js/script.js"></script>
    <script src="/js/roadmaps.js"></script>
    <script src="/js/header.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>