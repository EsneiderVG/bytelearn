<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ByteLearn</title>
    <link rel="stylesheet" href="/css/login/login.css">
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
</head>
<body>
    
  <%@ include file="../../plantillas/header_home.jsp" %>

    <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <!--<img src="images/frontImg.jpg" alt="">-->
        <div class="text">
          <span class="text-1">Cursos didacticos<br>Bootcamps!</span>
          <span class="text-2">ByteLearn <c:out value="${usuario.firstName}" /></span>
        </div>
      </div>
      <div class="back">
        <!--<img class="backImg" src="images/backImg.jpg" alt="">-->
        <div class="text">
          <span class="text-1"></span>
          <span class="text-2"></span>
        </div>
      </div>
    </div>
    <div class="forms">
      <div class="form-content">
        <div class="login-form">
          <div class="title">Ingresa</div>
          <form method="post" action="/login/singIn/enter">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" name="usuario" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Enter your password" required>
              </div>
              <div class="text"><a href="#">Olvidaste tu contraseña?</a></div>
              <!-- <div class="button input-box"> -->
              <button class="button_form" name="submit_1">Ingresar</button>
              <!-- </div> -->
              <div class="text sign-up-text">No tienes cuenta? <label class="change" for="flip">Registrate</label></div>
            </div>
            <div class="text sign-up-text">
              <span><img src="assets/img/dowload.png" alt="" srcset=""></span>
              <span class="soporte" id="btn-abrir-popup">Ayuda Sporte Tecnico</span>
            </div>
          </form>
        </div>
        <div class="signup-form">
          <div class="title">Registrate</div>
          <form:form action="/login/singUp/new" method="POST" enctype="multipart/form-data" modelAttribute="usuario">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <form:input  placeholder="digita tus nombres" path="firstName"/>
              </div>
              <form:errors path="firstName" />
              <div class="input-box">
                <i class="fas fa-user"></i>
                <form:input  placeholder="digita tus apellidos" path="lastName"/>
              </div>
              <form:errors path="lastName" />
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <form:input type="email" placeholder="digita tu gmail" path="email"/>
              </div>
              <form:errors path="email" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input  placeholder="digita tu usuario" path="username"/>
              </div>
              <form:errors path="username" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input type="password" placeholder="digita tu contraseña" path="password"/>
              </div>
              <form:errors path="password" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input type="password" placeholder="confirma tu contraseña" path="confirmPassword"/>
              </div>
              <form:errors path="confirmPassword" />
            </div>  
    
            <div class="button input-box">
              <input type="submit" name="submit_2" value="Sumbit">
            </div>
            <div class="text sign-up-text">Ya tienes una cuenta? <label for="flip">Ingresa ahora</label></div>
          </form:form>
          </div>
      </div>
    </div>
  </div>
  <span id="sendmail"></span>

  <div class="overlay" id="overlay">
    <div class="popup" id="popup">

      <a href="#" class="btn-cerrar-popup"><i id="btn-cerrar-popup" class="fas fa-times"></i></a>

      <div class="content_popu_row">
        <div class="info">
          <div class="info_contact">
            <i class="fa-solid fa-circle-user"></i>
            INFORMACION DE CONTACTO
          </div>
          <div class="content_contact_gt">
            <div class="contact_op_po">
              <i class="fa-solid fa-envelope"></i>
              
            </div>
            <br>
            <div class="contact_op_po">
              <i class="fa-solid fa-mobile-screen"></i>
              3023408260
            </div>
          </div>
        </div>
        <div class="formu_po">
          <div class="input-container">
            <input id="nombres_popu" class="input" type="text" pattern=".+" required />
            <label class="label" for="nombres_popu">Nombres</label>
          </div>
          <br>
          <div class="input-container">
            <input id="telefono_popu" class="input" type="text" pattern=".+" required />
            <label class="label" for="telefono_popu">Telefono/Celular</label>
          </div>
          <br>
          <div class="input-container">
            <input id="correo_popu" class="input" type="text" pattern=".+" required />
            <label class="label" for="correo_popu">Correo Electronico</label>
          </div>
          <br>
          <div class="input-container">
            <input id="mensaje_popu" required class="input" type="text" pattern=".+" required />
            <label class="label" for="mensaje_popu">Mensaje</label>
          </div>
          <!-- aqui puedes implementar ajax y php -->
          <button class="button_form2" onclick="">Subir</button>
        </div>
      </div>
    </div>
  </div>

  <%@ include file="../../plantillas/footer.jsp" %>
  <script src="js/popup.js"></script>
</body>
</html>