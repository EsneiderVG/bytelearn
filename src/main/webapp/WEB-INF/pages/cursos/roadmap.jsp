<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="/img/terzo.svg">
    <link rel="stylesheet" href="/css/cursos/roadmap.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha384-Z99tn9+g1M1kbw0q33mZXd7LIhyXf3gyfG1vzO+FoC9PPjgx/9OTe7DfvWiEmV8g" crossorigin="anonymous">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
</head>
<body>

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    <div class="container mx-auto my-8">
        <div class="flex items-center gap-6">
            <h1 class="boxy-lxl">Basic</h1>
            <div>
                <h3 class="text-4xl text-white mr-2">Basics
                    <span class="text-base">in</span></h3>
                <p>8 exercise</p>
            </div>
            
            <img src="https://cdn-icons-png.flaticon.com/512/1183/1183618.png" style="width: 60px; height: 60px;" alt="">
        </div>
        
        <div class="flex justify-between items-align">
            <ol class="relative border-l border-gray-200 dark:border-gray-700 text-white pb-5 mt-5">              
                <li class="mb-10 ml-6">            
                    <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                        <svg class="fa-solid fa-caret-up w-3.5 h-3.5 text-blue-800 dark:text-blue-300 mb-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                        </svg>
                    </span>
                    <div class="flex justify-between">
                        <div class="max-w-[560px]">
                            <h3 class="flex items-center mb-1 text-lg font-semibold text-white ml-2">Flowbite Application UI v2.0.0 <span class="bg-blue-100 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-900 dark:text-blue-300 ml-3">Latest</span></h3>
                            <time class="block mb-2 text-sm font-normal leading-none  ml-2 text-marked">Released on January 13th, 2022</time>
                            <p class="mb-4 ml-2 ml-2 text-base font-normal ">Get access to over 20+ pages including a dashboard layout, charts, kanban board, calendar, and pre-order E-commerce & Marketing pages.</p>
                            <a href="#" class="inline-flex items-center px-4 py-2 text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:outline-none focus:ring-gray-200 focus:text-blue-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700 dark:focus:ring-gray-700">
                            <svg class="w-3.5 h-3.5 mr-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M14.707 7.793a1 1 0 0 0-1.414 0L11 10.086V1.5a1 1 0 0 0-2 0v8.586L6.707 7.793a1 1 0 1 0-1.414 1.414l4 4a1 1 0 0 0 1.416 0l4-4a1 1 0 0 0-.002-1.414Z"/>
                            <path d="M18 12h-2.55l-2.975 2.975a3.5 3.5 0 0 1-4.95 0L4.55 12H2a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2Zm-3 5a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"/>
                            </svg> Download ZIP</a>
                        </div>
                        <div class="flex-col">
                            <a href="#" class="block max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <div class="flex gap-6">
                                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">01.</h5>
                                    <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                                </div>
                            </a>
                            <a href="#" class="block mt-2 max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <div class="flex gap-6">
                                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">01.</h5>
                                    <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                                </div>
                            </a>
                        </div>

                    </div>
                </li>
                <li class="mb-10 ml-6">
                    <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                        <svg class="fa-solid fa-caret-up w-3.5 h-3.5 text-blue-800 dark:text-blue-300 mb-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                        </svg>
                    </span>
                    <div class="flex justify-between">
                        <div class="max-w-[560px]">
                            <h3 class="mb-1 text-lg font-semibold text-white ml-2">Flowbite Figma v1.3.0</h3>
                            <time class="block mb-2 text-sm font-normal leading-none  ml-2 text-marked">Released on December 7th, 2021</time>
                            <p class="text-base font-normal ml-2">All of the pages and components are first designed in Figma and we keep a parity between the two versions even as we update the project.</p>
                        </div>
                        <div class="flex-col">
                            <a href="#" class="block max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <div class="flex gap-6">
                                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">01.</h5>
                                    <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                                </div>
                            </a>
                            
                        </div>
                    </div>        
                </li>
                <li class="mb-10 ml-6">
                    <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                        <svg class="w-3.5 h-3.5 text-blue-800 dark:text-blue-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                        </svg>
                    </span>
                    <div class="flex justify-between">
                        <div class="max-w-[560px]">
                            <h3 class="mb-1 text-lg font-semibold text-white ml-2">Flowbite Library v1.2.2</h3>
                            <time class="block mb-2 text-sm font-normal leading-none  ml-2 text-marked">Released on December 2nd, 2021</time>
                            <p class="text-base font-normal  ml-2">Get started with dozens of web components and interactive elements built on top of Tailwind CSS.</p>
                        </div>
                        <div class="flex-col">
                            <a href="#" class="block max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                <div class="flex gap-6">
                                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">01.</h5>
                                    <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
                                </div>
                            </a>
                            
                        </div>
                    </div>
                </li>
                <li class="mb-10 ml-6">
                    <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                        <i class="fa-solid fa-caret-up text-xl text-blue-800 dark:text-blue-300" ></i>
                    </span>
                </li>
            </ol>
            <div class="cards-exercise">

            </div>
        </div>
    </div>

    <%@ include file="../../plantillas/footer.jsp" %>
    

    <script src="js/header.js"></script>
</body>
</html>