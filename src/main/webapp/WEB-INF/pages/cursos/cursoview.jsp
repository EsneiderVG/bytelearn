<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ByteLearn - Cursos Python</title>
  <link rel="icon" href="/img/terzo.svg">
  <link rel="stylesheet" href="/css/cursos/cursoview.css">
  <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha384-Z99tn9+g1M1kbw0q33mZXd7LIhyXf3gyfG1vzO+FoC9PPjgx/9OTe7DfvWiEmV8g" crossorigin="anonymous">
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    import {
      Collapse,
      initTE,
    } from "tw-elements";

    initTE({ Collapse });
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
  

</head>

<body>

<%@ include file="../../plantillas/header_cursos.jsp" %>

  <div class="container mx-auto container-content row-flex">
    <c:import url="components/leftslidetheme.jsp">
      <c:param name="selected" value="Welcome to Page 1"/>
      <c:param name="x" value="python"/>
    </c:import>  
    <div class="content-right-side my-2 rounded-md">

      <c:import url="components/rightslidetheme.jsp">
        <c:param name="x" value="python"/>
      </c:import>  
      
    </div>
  </div>

  <!-- footer  -->
  <%@ include file="../../plantillas/footer.jsp" %>


  <script src="header.js"></script>
  <script src="/js/cursoview.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>

</body>
</html>
