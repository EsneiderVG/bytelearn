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
    <link rel="stylesheet" href="/css/home/faq.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function() {
      $('.faq .question').click(function() {
        $(this).parent().toggleClass('expanded');
        $(this).next('.answer').toggleClass('show');
      });
    });
  </script>
</head>
<body>
    <%@ include file="../plantillas/header_home.jsp" %>

    <div class="container mx-auto my-20 text-white">
        <div id="preguntas">
            <h1 class="text-degrade">Preguntas frecuentes (FAQ)</h1>
            <div class="faq">
                <ul>
                    <ol class="relative border-l border-gray-200 dark:border-gray-700">
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Hay cursos gratis que me permitan Certificación en GDO?</h1>
                    <span class="answer">Sí, actualmente nuestros cursos son gratuitos y todos permiten la certificación de manera individual, y tenemos la certificación por rutas que se da a la finalización de una ruta selecciona y permite al igual la certificación por cada curso seleccionado.</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Puedo cambiar mi nombre en el certificado?</h1>
                    <span class="answer">Puedes modificar tu nombre en el certificado solamente una vez, para hacerlo ingresa a ver mi perfil y luego a completa tu perfil.
        
                        No olvides que solo podrás cambiarlo una vez y es válido únicamente para cambiar el orden de tus nombres o apellidos, o corregir errores en letras o palabras.</span>
                  </li>
                  <li  class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Qué es GDO?</h1>
                    <span class="answer">GDO es una plataforma de educación Online, gratuita, comprometida con dar información de calidad, veracidad y actual, dirigido a cualquier persona interesada en aprender de manera didáctica para poder actualizarse, aprender nuevas tecnologías de manera eficaz o satisfacer tu curiosidad.</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Cómo funcionan los cursos? ¿Debo seguir un horario?</h1>
                    <span class="answer">Todos nuestros cursos son online y están disponibles 24/7 en la plataforma, podrás estudiar a tu ritmo y al final obtendrás tu certificación. Podrás participar con la comunidad de estudiantes y profesores la cual encontrarás en Discord también podrás participar en los live que hacemos de manera semanal con las que puedes complementar tu aprendizaje.
                        <br>
                        Es importante que sepas que no todos los estudiantes tienen el mismo proceso de aprendizaje y es posible que poder adquirir el conocimiento de cada concepto te tome más o menos tiempo que a otras personas; no te preocupes, recuerda que lo más importante es que reconozcas tus necesidades y que construyas un proyecto o portafolio para que practiques lo que aprendiste.
                    </span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Qué necesito para tomar los cursos?</h1>
                    <span class="answer">Solo necesitas una conexión a Internet y una Computadora, Laptop, Tablet o Smartphone con Android OS 5+ o iOS 13+. Si tu conexión te permite ver videos de manera fluida en YouTube a 480p verás las clases sin ningún problema, importante que cuentes con espacio en tu Disco duro, ya que en algunos cursos será vital que puedas instalar aplicaciones..</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Cómo me contacto con alguien para qué me guie?</h1>
                    <span class="answer">Tenemos a disposición el canal de <a href="#">WHATSAPP</a>  para poder absolver tus consultas y también contamos con el correo <a href="#"> Ayuda.informes@GDO.com</a> para que nos puedan detallar cualquier duda.</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">Tengo ideas, ¿cómo las comparto?</h1>
                    <span class="answer">En GDO siempre estamos disponibles al feedback que nos pueden aportar los estudiantes o la manera en poder ofrecer una mejor calidad en la enseñanza, nos fascinaría que puedas brindarnos tus ideas y sugerencias al siguiente medio: <a href="#">Aportaciones@GDO.com</a> .</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Cómo funciona su apartado de bootcamp?</h1>
                    <span class="answer">Buscamos que las personas con conocimientos previos o que les guste asumir retos se puedan inscribir y representarnos en diferentes concursos que se dan a nivel internacional <a href="#">HACKATONS</a> mejoras concursos o una forma que destaque más su perfil profesional los damos en 2 modos:  <a href="#">Intensivo</a>  <a href="#">Moderado</a>.</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Por dónde empiezo?</h1>
                    <span class="answer">Para comenzar es necesario que pase por la formación de principiante o pueda tomar una prueba para saltar esta fase, aquí le detallaremos formas para poder mejorar su organización y la manera más practica de afianzar su conocimiento..</span>
                  </li>
                  <li class="boxed">
                    <span class="absolute flex items-center justify-center w-6 h-6 bg-blue-800 rounded-full -left-3 ring-8 ring-white dark:ring-gray-400 dark:bg-blue-900">
                        <i class="fa-solid fa-question"></i>
                    </span>
                    <h1 class="question">¿Cómo los puedo apoyar?</h1>
                    <span class="answer">GDO es sin fines de lucro y buscamos poder brindar la información a cualquier persona que lo requiera, nos ayudaría mucho que pudiera compartirnos en sus <a href="#">redes sociales</a>, complete la encuesta de <a href="#">satisfacción</a>, participar activamente en las sesiones de live y donarnos un <a href="#">CAFE</a>.</span>
                  </li>
                </ol>
                </ul>
              </div>
              
        
          </div>
    </div>


    <%@ include file="../plantillas/footer.jsp" %>

</body>
</html>