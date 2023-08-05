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

    <%@ include file="../../plantillas/header_home.jsp" %>
    <div style="margin-top: 100px;"></div>
    <div class="container-main font-normal">
        <div class="flex-row-p mt-6">
            <div class="info-perfil-content flex-col justify-center items-center px-8">
                <div class="img-perfil">
                    <img src="https://www.mundodeportivo.com/alfabeta/hero/2022/10/all-might-boku-no-hero.jpg?width=1200"
                        alt="x" class="img-perfil rounded-full">
                    <button type="button" id="button-change-perfil" class="custom-button boton-avatar">
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
                    </button>
                </div>
                <div class="content-info mt-6">
                    <h2 class="font-semibold text-xl">Neider Vg</h2>
                    <p class="mb-4"><span class="mark">@</span>Esneider Velez Gomez</p>
                    <p class="text-base mb-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores quod beatae adipisci aliquam
                        eos!
                    </p>
                    <button
                        class="w-full button-edit p-2 rounded-lg focus:ring-2  dark:focus:ring-blue-700 focus:outline-none focus:ring-blue-200">Edit
                        profile</button>

                    <div class="stat-user-flex flex items-center gap-4 my-5">
                        <p>
                            <i class="fa-solid fa-users"></i>
                            <span class="ml-1 text-sm">1 followers</span>
                        </p>
                        <p>
                            <i class="fa-solid fa-users"></i>
                            <span class="ml-1 text-sm">1 followers</span>
                        </p>
                    </div>

                    <p>
                        <i class="fa-solid fa-location-dot"></i>
                        <span class="ml-1 text-sm">Colombia</span>
                    </p>

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
                <h1 class="text-2xl px-8 pt-6">Cursos en curso:</h1>
                <div class="cards-list">
                    
                    <div class="card 1">
                        <div class="card_image"> 
                            <img src="https://i.redd.it/b3esnz5ra34y.jpg" /> 
                        </div>

                        <div class="info-course px-4">
                            <div class="card_title title-white text-2xl px-4 pt-4">
                                <p>Python Avanzado en POO</p>
                            </div>
                            <div class="progress-text">
                                <p class="px-4 pt-4">Curso actualmente en: 50%</p>
                                <div class="progress-cont px-4 mt-4">
                                    <div class="progress"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card 2">
                        <div class="card_image"> 
                            <img src="https://media.giphy.com/media/10SvWCbt1ytWCc/giphy.gif" /> 
                        </div>

                        <div class="info-course px-4">
                            <div class="card_title title-white text-2xl px-4 pt-4">
                                <p>Python Avanzado en POO</p>
                            </div>
                            <div class="progress-text">
                                <p class="px-4 pt-4">Curso actualmente en: 50%</p>
                                <div class="progress-cont px-4 mt-4">
                                    <div class="progress"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card 3">
                        <div class="card_image"> 
                            <img src="https://media.giphy.com/media/LwIyvaNcnzsD6/giphy.gif" /> 
                        </div>

                        <div class="info-course px-4">
                            <div class="card_title title-white text-2xl px-4 pt-4">
                                <p>Python Avanzado en POO</p>
                            </div>
                            <div class="progress-text">
                                <p class="px-4 pt-4">Curso actualmente en: 50%</p>
                                <div class="progress-cont px-4 mt-4">
                                    <div class="progress"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../../plantillas/footer.jsp" %>

    <script src="/js/perfilUsuario.js"></script>
</body>

</html>