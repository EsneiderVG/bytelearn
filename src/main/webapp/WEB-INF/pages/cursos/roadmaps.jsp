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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
</head>
<body>

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    <div class="container mx-auto">
        <div class="flex items-center">

            <h3 class="text-4xl text-white mr-2">Basics
            in</h3>
            <img src="https://cdn-icons-png.flaticon.com/512/1183/1183618.png" style="width: 60px; height: 60px;" alt="">
        </div>
        
        <div class="min-h-screen sm:p-2 p-5 lg:px-10">
            <div class="min-h-screen max-w-5xl mx-auto place-content-center justify-center justify-items-start grid md:grid-cols-3 gap-x-14 gap-y-5">
              <div class="bg-white shadow-lg rounded-xl overflow-hidden max-w-xs order-first lg:order-none">
                <div>
                  <img src="https://images.pexels.com/photos/2156881/pexels-photo-2156881.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Abstract Design" class="w-full h-40 sm:h-48 object-cover">
                </div>
                <div class="py-5 px-6 sm:px-8">
                  <h2 class="text-xl sm:text-2xl text-gray-800 font-semibold mb-3">Abstract Design</h2>
                  <p class="text-gray-500 leading-relaxed">Lorem ipsum dolor sit amet, conse adipiscing elit. Phasellus enim erat, vestibulum vel.</p>
          
                  <ul class="flex mt-8">
                    <li>
                      <img src="https://images.pexels.com/photos/89790/beauty-woman-portrait-face-89790.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/1102341/pexels-photo-1102341.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                  </ul>
                </div>
              </div>
              <div class="bg-white shadow-lg rounded-xl overflow-hidden max-w-xs order-3 md:row-start-1 md:col-start-2 lg:order-none">
                <div>
                  <img src="https://images.pexels.com/photos/326501/pexels-photo-326501.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Web Design" class="w-full h-40 sm:h-48 object-cover">
                </div>
                <div class="py-5 px-6 sm:px-8">
                  <h2 class="text-xl sm:text-2xl text-gray-800 font-semibold mb-3">Web Design</h2>
                  <p class="text-gray-500 leading-relaxed">Lorem ipsum dolor sit amet, conse adipiscing elit. Phasellus enim erat, vestibulum vel.</p>
          
                  <ul class="flex mt-8">
                    <li>
                      <img src="https://images.pexels.com/photos/1758845/pexels-photo-1758845.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/412840/pexels-photo-412840.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                  </ul>
                </div>
              </div>
              <div class="bg-white shadow-lg rounded-xl overflow-hidden max-w-xs order-5 lg:order-none">
                <div>
                  <img src="https://images.pexels.com/photos/986733/pexels-photo-986733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Photography" class="w-full h-40 sm:h-48 object-cover">
                </div>
                <div class="py-5 px-6 sm:px-8">
                  <h2 class="text-xl sm:text-2xl text-gray-800 font-semibold mb-3">Photography</h2>
                  <p class="text-gray-500 leading-relaxed">Lorem ipsum dolor sit amet, conse adipiscing elit. Phasellus enim erat, vestibulum vel.</p>
          
                  <ul class="flex mt-8">
                    <li>
                      <img src="https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/458718/pexels-photo-458718.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                    <li>
                      <img src="https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200" alt="Face" class="rounded-full w-10 h-10 object-cover border-2 border-white">
                    </li>
                  </ul>
                </div>
              </div>
          
              <div class="w-full bg-white shadow-lg rounded-xl h-24 flex items-center justify-center order-2 md:col-start-1 md:col-end-2 md:max-w-xs lg:order-none">
                <div class="bg-gray-200 block w-44 h-1 rounded relative">
                  <span class="bg-blue-400 block w-32 h-1 rounded absolute top-0 left-0"></span>
                </div>
          
                <span class="ml-5 text-sm text-gray-400">76%</span>
              </div>
          
              <div class="w-full bg-white shadow-lg rounded-xl h-24 flex items-center justify-center order-4 max-w-xs lg:order-none">
                <div class="bg-gray-200 block w-44 h-1 rounded relative">
                  <span class="bg-yellow-400 block w-5 h-1 rounded absolute top-0 left-0"></span>
                </div>
          
                <span class="ml-5 text-sm text-gray-400">7%</span>
              </div>
          
              <div class="w-full bg-white shadow-lg rounded-xl h-24 flex items-center justify-center order-last md:col-start-1 md:col-end-2 md:max-w-xs lg:col-auto lg:order-none">
                <div class="bg-gray-200 block w-44 h-1 rounded relative">
                  <span class="bg-green-400 block w-20 h-1 rounded absolute top-0 left-0"></span>
                </div>
          
                <span class="ml-5 text-sm text-gray-400">42%</span>
              </div>
          
            </div>
          </div>
    </div>

    <%@ include file="../../plantillas/footer.jsp" %>
    

    <script src="js/header.js"></script>
</body>
</html>