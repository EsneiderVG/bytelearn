<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
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
                    <!-- <button type="button" id="button-change-perfil" class="custom-button boton-avatar">
                        <form class="flex" method="post" enctype="multipart/form-data">
                            <input type="file" id="input-file-perfil" hidden="hidden" name="imagen" required />
                        </form>
                        <div class="flex justify-center items-center w-full h-full">
                            <div class="text-gray-500">
                                <i class="far fa-image text-xl"></i>
                            </div>
                        </div>
                    </button>
                    <button type="button" id="button-change-status" class="custom-button boton-status">
                        <div class="flex justify-center items-center w-full h-full	">
                            <div class=" text-gray-500">
                                <i class="fa-solid fa-code"></i>
                            </div>
                        </div>
                    </button> -->
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
            <div class="curses-container rounded-md flex-col justify-around py-4 px-8">
                <h1 class="text-2xl px-8 pt-6">Editar perfil:</h1>
                <hr class="my-4">
                <div class="">
                    <h1>Información general</h1>
                    <form action="">
                        <label for="">firsts Names</label>
                        <input type="text" name="" id="">
                        <label for="">lasts names</label>
                        <input type="text" name="" id="">
                        <label for="">email</label>
                        <input type="text" name="" id="">
                        <label for="">username</label>
                        <input type="text" name="" id="">
                        <button>Guardar</button>
                    </form> 
                </div>
                <hr class="my-4">
                <div class="">
                    <h1>Información de seguridad</h1>
                    <form action="">
                        <label for="">password</label>
                        <input type="text" name="" id="">
                        <label for="">confirm password</label>
                        <input type="text" name="" id="">
                        <button>Guardar</button>
                    </form> 
                </div>
                <hr class="my-4">

                <div class="">
                    <h1>Eliminar Cuenta</h1>
                    <form action="">
                        <button>borrar cuenta</button>
                    </form> 
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../../plantillas/footer.jsp" %>

    <script src="/js/perfilUsuario.js"></script>
</body>

</html>