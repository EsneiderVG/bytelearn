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
  <script>
    const accordionHeader = document.querySelectorAll(".accordion-header");
    accordionHeader.forEach((header) => {
      header.addEventListener("click", function () {
        const accordionContent = header.parentElement.querySelector(".accordion-content");
        let accordionMaxHeight = accordionContent.style.maxHeight;

        // Condition handling
        if (accordionMaxHeight == "0px" || accordionMaxHeight.length == 0) {
          accordionContent.style.maxHeight = `${accordionContent.scrollHeight + 100}%`;
          header.querySelector(".fas").classList.remove("fa-plus");
          header.querySelector(".fas").classList.add("fa-minus");
          header.parentElement.classList.add("bg-[#00304d]");
        } else {
          accordionContent.style.maxHeight = `0px`;
          header.querySelector(".fas").classList.add("fa-plus");
          header.querySelector(".fas").classList.remove("fa-minus");
          header.parentElement.classList.remove("bg-[#00304d]");
        }
      });
    });
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>

</body>

</html>


<!-- <div>
  <p>Cursos Relacionados</p>
  <img
    src="https://www.mundodeportivo.com/alfabeta/hero/2020/12/all-might-4.jpg?width=768&aspect_ratio=16:9&format=nowebp"
    width="60" height="60" alt="">
  <p>Programacion orientada a pyhon</p>
  <p><strong>BYTELEARN</strong></p>
</div> -->