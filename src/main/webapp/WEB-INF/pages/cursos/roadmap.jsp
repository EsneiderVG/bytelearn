<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="/css/components/popup.css">
</head>
<body>

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    <div class="wrapper py-10 px-6">
        <div class="flex items-center gap-4 mb-4 justify-between">

            <div class="flex items-center gap-4">
                <h1 class="boxy-lxl">Basic</h1>
                <div>
                    <h3 class="text-4xl text-white mr-2"><c:out value="${keyboard.name}"/>
                </div>
                <img src="/img/java.svg" style="width: 60px; height: 60px;" alt="">      
            </div>
            <div class="button-add-admin">
                <a href="/roadmaps/${routeorder.id}" class="button-edit p-3 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]"> volver</a>
            <c:if test="${usuario.userType.id == 2}">
                <a href="" ></a>
                    <button id="btn-abrir-popup" class="button-edit p-2 rounded-lg text-white text-center mt-4 cursor-pointer bg-[#30a6eb]"><i class="fa-solid fa-plus mr-2"></i>Add Info</button>
                </c:if>
            </div>
        </div>

        <div class="p-10 pt-5 pb-8 rounded-lg bg-white">

            <div class="flex justify-between items-align ">
                <c:if test="${textos != null}">  
                <ol class="relative border-l border-gray-200 dark:border-gray-700 text-black pb-5 mt-5">
                    <c:forEach var="i" items="${textos}">
                        <c:if test="${i.rutesContent.id == routeorder.id}">              
                            <li class="mb-10 ml-6">            
                                <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                                    <svg class="fa-solid fa-caret-up w-3.5 h-3.5 text-blue-800 dark:text-blue-300 mb-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                                    </svg>
                                </span>
                                <div class="flex justify-between gap-4">
                                    <div class="max-w-[560px]">
                                        <h3 class="flex items-center mb-1 text-lg font-semibold text-black ml-2"><c:out value="${i.titulo}" /></h3>
                                        <time class="block mb-2 text-sm font-normal leading-none ml-2 text-marked">Released on <fmt:formatDate type="time" value="${i.createdAt}" pattern=" MMMM d ,y"/></time>
                                        <p class="mb-4 ml-2 ml-2 text-base font-normal "><c:out value="${i.parrafo}" /></p>
                                        <!-- <span class="bg-blue-100 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-900 dark:text-blue-300 ml-3">Latest</span> -->
                                        <!-- <a href="#" class="inline-flex items-center px-4 py-2 text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:outline-none focus:ring-gray-200 focus:text-blue-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700 dark:focus:ring-gray-700">
                                        <svg class="w-3.5 h-3.5 mr-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M14.707 7.793a1 1 0 0 0-1.414 0L11 10.086V1.5a1 1 0 0 0-2 0v8.586L6.707 7.793a1 1 0 1 0-1.414 1.414l4 4a1 1 0 0 0 1.416 0l4-4a1 1 0 0 0-.002-1.414Z"/>
                                        <path d="M18 12h-2.55l-2.975 2.975a3.5 3.5 0 0 1-4.95 0L4.55 12H2a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2Zm-3 5a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"/>
                                        </svg> Download ZIP</a> -->
                                    </div>
                                    <div class="flex-col">
                                        <a href="#" class="block mt-2 max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
                                            <div class="flex gap-6">
                                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Ejemplo:</h5>
                                                <p class="font-normal text-gray-700 dark:text-gray-400"><c:out value="${i.example}" /></p>
                                            </div>
                                        </a>
                                    </div>
            
                                </div>
                            </li>
                        </c:if>
                    </c:forEach>
                    <li class="mb-10 ml-6">
                        <span class="absolute flex items-center justify-center w-8 h-8 bg-blue-100 rounded-full -left-4 background-deg">
                            <i class="fa-solid fa-caret-up text-xl text-blue-800 dark:text-blue-300" ></i>
                        </span>
                    </li>
                </ol>
                </c:if>
                <div class="cards-exercise">
    
                </div>
            </div>
        </div>
    </div>

    <c:import url="popups/crearContentRuta.jsp">
        <c:param name="selected" value="Welcome to Page 1"/>
        <c:param name="roadid" value="${routeorder.rutesContent.id}"/>
        <c:param name="keyid" value="${keyboard.id}"/>
    </c:import> 

    <%@ include file="../../plantillas/footer.jsp" %>
    
    <script src="/js/popup.js"></script>
    <script src="js/header.js"></script>
</body>
</html>