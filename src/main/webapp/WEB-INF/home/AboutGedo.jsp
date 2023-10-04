<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="/img/gdo-img.png">
    <link rel="stylesheet" href="/css/home/main.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <%@ include file="../plantillas/header_home.jsp" %>

    <div class="container mx-auto my-20 text-white">

        

        <div class="box-container mg-bt-20 ">
            <div class="row-flex gp-50 justify-space">
              <div class="box-item w-xx">
                <div class="cont-sep row-flex-sep justify-center gp-20">
                    <div class="separeted-circle"></div>
                    <div class="separeted"></div>
                </div>
                <h1 class="title-xxl">
                  ¿Qué es GDO?
                </h1>
                <p>
                  GDO es una aplicación web de enseñanza sin ánimo de lucro para todo aquel que quiera introducirse en el mundo de la programación pero no saben por dónde empezar.
                  <br><br>
                  Encontrarás una guía clara para aprender diversos temas de la programación; facilitando el acceso a la información y la documentación de este emocionante campo digital.
                </p>
                <button class="animate-bounce">See a Demo!</button>
              </div>
              <div class="box-item circle-bck">
                <img src="img/ques.svg" alt="Contability" />
              </div>
            </div>
        </div>
        <div class="box-container mg-bt-20">
            <div class="row-flex gp-50 justify-space">
              <div class="box-item circle-bck">
                <img src="img/futuro.svg" alt="Contability" />
              </div>
              <div class="box-item w-xx">
                <h1 class="title-xxl">
                    Futuro de Gdo?
                </h1>
                <p>
                  Sabemos que el mundo está en constante evolución, por lo que no nos quedaremos atrás y junto a nuestros estudiantes estamos encaminados hacia el futuro. Las rutas de educación estarán en constante actualización así como la creación de nuevas rutas.
                </p>
                <button class="animate-bounce">See a Demo!</button>
              </div>
      
            </div>
        </div>
        <div class="box-container mg-bt-20">
            <div class="row-flex gp-50 justify-space">
              <div class="box-item w-xx">
                <h1 class="title-xxl">
                  Sostenibilidad?
                </h1>
                <p>
                    No tenemos ánimo de lucro, aceptamos donaciones para mantener el proyecto. Si nos quieres apoyar enviar un correo a  
                    </strong>gdolatam@gedo.com<strong> :)
                </p>
                <button class="animate-bounce">See a Demo!</button>
              </div>
              <div class="box-item circle-bck">
                <img src="img/finances.svg" alt="Contability" />
              </div>
            </div>
        </div>
        
      
        <div class="cont-sep row-flex-sep justify-center gp-20">
            <div class="separeted-circle"></div>
            <div class="separeted"></div>
        </div>

    </div>


    <%@ include file="../plantillas/footer.jsp" %>

</body>
</html>