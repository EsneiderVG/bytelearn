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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
          <span class="text-2">Guide for Dev Ops</span>
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
          <form method="post" action="/login">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="digita tu gmail" name="username" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="digita tu contraseña" name="password" required>
              </div>
              <div class="text"><a href="#">Olvidaste tu contraseña?</a></div>
              <!-- <div class="button input-box"> -->
              <button class="button_blue">Ingresar</button>
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
          <form:form action="/user/new" method="post" modelAttribute="registroUsuario">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <form:input  placeholder="digita tus nombres" path="firstName" required="true"/>
              </div>
              <form:errors path="firstName" />
              <div class="input-box">
                <i class="fas fa-user"></i>
                <form:input  placeholder="digita tus apellidos" path="lastName" required="" />
              </div>
              <form:errors path="lastName" />
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <form:input type="email" placeholder="digita tu gmail" path="email" required="true"/>
              </div>
              <form:errors path="email" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input placeholder="digita tu usuario" path="username" required="true"/>
              </div>
              <form:errors path="username" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input type="password" placeholder="digita tu contraseña" path="password" required="true"/>
              </div>
              <form:errors path="password" />
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <form:input type="password" placeholder="confirma tu contraseña" path="confirmPassword" required="true"/>
              </div>
              <form:errors path="confirmPassword" />
            </div>  
    
            
            <input class="button_blue" type="submit" value="Registrar" >
           
            <div class="text sign-up-text">Ya tienes una cuenta? <label for="flip">Ingresa ahora</label></div>
          </form:form>
          </div>
      </div>
    </div>
  </div>
  <c:import url="popups/popupsoporte.jsp">
      <c:param name="selected" value="Welcome to Page 1"/>
      <c:param name="x" value="python"/>
  </c:import> 

  <%@ include file="../../plantillas/footer.jsp" %>
  <script src="/js/login.js"></script>
  <script src="/js/popup.js"></script>
  <script src="/js/validateRealTime.js"></script>
</body>
</html>