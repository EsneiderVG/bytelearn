<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="/css/perfilU/perfil_usuario.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
</head>

<body>

    <%@ include file="../../plantillas/header_cursos.jsp" %>
    <div style="margin-top: 100px;"></div>
    <div class="container-main font-normal">
        <div class="flex-row-p mt-6">
            <div class="info-perfil-content flex-col justify-center items-center px-8">
                <div class="img-perfil">
                    <img src="${usuario.imagenPerfil}"
                        alt="imagen de perfil de usuario" class="img-perfil rounded-full">
                </div>
                <div class="content-info mt-6">
                    <h2 class="font-semibold text-xl"><c:out value="${usuario.firstName}"/> <c:out value="${usuario.lastName}"/></h2>
                    <p class="mb-4"><span class="mark">@</span><c:out value="${usuario.username}"/></p>
                    <p class="text-base mb-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores quod beatae
                        adipisci aliquam
                        eos!
                    </p>
                    <form action="/user/${usuario.id}">
                        <button
                            class="w-full button-edit p-2 rounded-lg focus:ring-2  dark:focus:ring-blue-700 focus:outline-none focus:ring-blue-200">
                            Ver perfil
                        </button>
                    </form>
                    <hr class="my-4">

                    <p class="text-xl">Archievement</p>
                    <div class="stat-user-flex flex pt-2">
                        <img src="https://www.mundodeportivo.com/alfabeta/hero/2022/10/all-might-boku-no-hero.jpg?width=1200"
                            alt="" class="cards-medallas rounded-full">
                    </div>

                </div>
                <!-- <span>text</span> -->
            </div>
            <div class="curses-container rounded-md flex-col justify-around py-4 px-8 w-full">

                <div class="flex items-center">
                    <i class="fa-solid fa-user-pen mr-2"></i>
                    <h1 class="text-2xl py-2">Editar perfil:</h1>
                </div>

                <hr class="my-4">
                <div class="">
                    <h1>Información general</h1>
                    <form action="" method="post">
                        <div class="flex items-center mt-10 mb-6 gap-4">

                            <div class="relative z-0 w-full group">
                                <input type="text" name="floating_email" id="floating_firstnames" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder="" required 
                                name="firstName"
                                value="${usuario.firstName}"
                                />
                                <label for="floating_firstnames" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb]  peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                    <i class="fa-solid fa-envelope mr-1"></i> 
                                    First Names
                                </label>
                            </div>
    
                            <div class="relative z-0 w-full group">
                                <input type="email" name="floating_email" id="floating_lastnames" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder=" " required 
                                name="lastName"
                                value="${usuario.lastName}"
                                />
                                <label for="floating_lastnames" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb]  peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                    <i class="fa-solid fa-envelope mr-1"></i> 
                                    Lasts Names
                                </label>
                            </div>
                        </div>

                        <div class="relative z-0 w-full group mt-8 mb-10">
                            <input type="email" name="floating_email" id="floating_email" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder=" " required 
                            name="email"
                            value="${usuario.email}"
                            />
                            <label for="floating_email" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb]  peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                <i class="fa-solid fa-envelope mr-1"></i> 
                                Email
                            </label>
                        </div>

                        <div class="relative z-0 w-full group my-8">
                            <input type="text" name="floating_email" id="floating_username" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder=" " required 
                            name=""
                            value="${usuario.username}"
                            />
                            <label for="floating_username" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb] peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                <i class="fa-solid fa-envelope mr-1"></i> 
                                Username
                            </label>
                        </div>
                        <button class="button-edit p-2 rounded-lg focus:ring-2  dark:focus:ring-blue-700 focus:outline-none focus:ring-blue-200 bg-[#30a6eb]" type="submit">Guardar</button>
                        

                    </form> 
                </div>
                <hr class="my-4">
                <div class="">
                    <div class="flex items-center">
                        <i class="fa-solid fa-user-pen mr-2"></i>
                        <h1 class="text-xl py-2">Seguridad de la cuenta:</h1>
                    </div>
                    <form action="" method="post">
                        <div class="flex items-center mt-4 mb-8 gap-4">
                            <div class="relative z-0 w-full group">
                                <input type="password" name="floating_email" id="floating_password" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder=" " required 
                                name=""
                                />
                                <label for="floating_password" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb]  peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                    <i class="fa-solid fa-envelope mr-1"></i> 
                                    Password
                                </label>
                            </div>
    
                            <div class="relative z-0 w-full group">
                                <input type="password" name="floating_email" id="floating_password_confirm" class="block p-2 pl-2 px-0 w-full text-base text-white bg-gray-50 border border-gray-300 rounded-lg bg-transparent border-gray-300 appearance-none dark:text-white dark:border-gray-600 focus:outline-none focus:ring-0 peer" placeholder=" " required 
                                name=""
                                />
                                <label for="floating_password_confirm" class="peer-focus:font-medium absolute text-base text-white duration-300 transform -translate-y-9 scale-100 top-2.5 -z-10 pl-2 origin-[0] peer-focus:left-0 peer-focus:text-[#30a6eb]  peer-focus:dark:text-[#30a6eb]  peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-100 peer-focus:-translate-y-9">
                                    <i class="fa-solid fa-envelope mr-1"></i> 
                                    Confirm Password
                                </label>
                            </div>
                        </div>

                        <button class="button-edit p-2 rounded-lg focus:ring-2  dark:focus:ring-blue-700 focus:outline-none focus:ring-blue-200 bg-[#30a6eb]" type="submit">Guardar</button>
                    </form> 
                </div>
                <hr class="my-4">

                <div class="">
                    <h1>Eliminar Cuenta</h1>
                    <form action="">
                        <button type="submit" class="button-edit focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">borrar cuenta</button>
                    </form> 
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../../plantillas/footer.jsp" %>

    <script src="/js/perfilUsuario.js"></script>
    <script src="/js/popup.js"></script>
</body>

</html>