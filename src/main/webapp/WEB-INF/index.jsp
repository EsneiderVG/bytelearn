<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ByteLearn - Cursos Python</title>
  <link rel="icon" href="/img/terzo.svg">
  <link rel="stylesheet" href="/css/home/main.css">
  <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
 
<%@ include file="plantillas/header_home.jsp" %>

  <main class="container mx-auto">
    <!-- first bloque -->
    <div class="box-container mg-bt-20">
      <div class="row-flex gp-50 justify-center">
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            Unlock financial insights hidden in your contracts
          </h1>
          <p>
            Discover data across your contract ecosystem to drive savings and
            reduce risk through Terzo AI
          </p>
          <button>Registrate!</button>
        </div>
        <div class="box-item circle-bck">
          <img src="img/img1.svg" alt="current" />
        </div>
      </div>
    </div>

    <div class="box-container pd-20 mg-bt-60">
      <div class="row-flex gp-50">
        <div class="box-item">
          <h1 class="porcent-text-card">3x</h1>
          <span class="sub-text-porcent">Costs</span>
          <p>
            Discover data across your contract ecosystem to drive savings and
            reduce risk through Terzo AI
          </p>
        </div>
        <div class="box-item">
          <h1 class="porcent-text-card">10%+</h1>
          <span class="sub-text-porcent">Costs</span>
          <p>
            Discover data across your contract ecosystem to drive savings and
            reduce risk through Terzo AI
          </p>
        </div>
        <div class="box-item">
          <h1 class="porcent-text-card">30</h1>
          <span class="sub-text-porcent">Costs</span>
          <p>
            Discover data across your contract ecosystem to drive savings and
            reduce risk through Terzo AI
          </p>
        </div>
      </div>
    </div>

    <div class="cont-sep row-flex-sep justify-center gp-20">
      <div class="separeted-circle"></div>
      <div class="separeted"></div>
    </div>

    <div class="box-container  mg-bt-60">
      <div class="col-flex">
        <div class="box-item w-100" style="text-align: center">
          <h1 class="title-xxl">
            Contract Intelligence to drive financial performance
          </h1>
          <div class="img-back-card">
            <img class="img-col" src="img/home-dashboard.jpg" alt="home-dashboard" />
          </div>
          <div class="move-up-card">
            <p class="fnt-18">
              Terzo helps leaders track every dollar coming in and going out
              of the organization
            </p>
            <button>See a Demo!</button>
          </div>
        </div>
      </div>
    </div>

    <div class="box-container mg-bt-20">
      <div class="row-flex gp-50 justify-space">
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            Speed up intake and approval processes
          </h1>
          <p>
            No-code workflow templates make this fast and easy to deploy. Automate tasks and approvals. Govern cost,
            risk, and get visibility into all requests.
          </p>
          <button>See a Demo!</button>
        </div>
        <div class="box-item circle-bck">
          <img src="img/intake.jpg" alt="Contability" />
        </div>
      </div>
    </div>
    <div class="box-container mg-bt-20">
      <div class="row-flex gp-50 justify-space">
        <div class="box-item circle-bck">
          <img src="img/visualize.jpg" alt="Contability" />
        </div>
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            Maximize your strategic relationships
          </h1>
          <p>
            Robust analytics and reporting provide critical data to strengthen negotiations and optimize relationships
            with customers, suppliers, and partners.
          </p>
          <button>See a Demo!</button>
        </div>

      </div>
    </div>

    <div class="cont-sep row-flex-sep justify-center gp-20">
      <div class="separeted-circle"></div>
      <div class="separeted"></div>
    </div>



    <div class="box-container mg-bt-60 mg-tp-60">
      <div class="msg-end col-flex gp-50 justify-center center-x">
        <img src="img/terzo.svg" alt="terzo" width="105" />
        <h2 class="title-xxl">
          Speed to value. Get up and running in weeks, not months or years.
        </h2>
        <button>Book a demo</button>
      </div>

    </div>
  </main>

  <%@ include file="plantillas/footer.jsp" %>
  

  <script src="https://cdn.jsdelivr.net/npm/less"></script>
  <script src="js/header.js"></script>
</body>

</html>