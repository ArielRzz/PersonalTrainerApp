<%--
  Created by IntelliJ IDEA.
  User: Cristian
  Date: 08-05-2022
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="css/ estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Title</title>
</head>
<body>

<%@include file="header.jsp"%>

<form class="col-5 container" action="certificadoDePago">



    <h1 >Personaliza tu plan</h1>


    <div class="mb-3">
        <label class="form-label">Tipo de especialidad</label>
        <select id="select" class="form-select" aria-label="Default select example" required>
            <option selected></option>

            <c:forEach var="entre" items="${especialidades}">
                <option value=${entre.id}>${entre.nombre}</option>
            </c:forEach>

        </select>
    </div>



    <div class="mb-3">
        <label class="form-label">Entrenador</label>
        <select name="select" id="select2" class="form-select" aria-label="Default select example">
            <option selected></option>

            <c:forEach var="entre" items="${entrenadores}">
                <option value=${entre.id}>${entre.nombre}</option>
            </c:forEach>

        </select>
    </div>



    <div class="mb-3 opcion2">
        <label  class="form-label">Modalidad</label>
        <select id="select3" class="form-select" aria-label="Default select example">
            <option selected></option>
            <c:forEach var="entre" items="${modalidades}">
                <option value=${entre.id}>${entre.nombre}</option>
            </c:forEach>
        </select>
    </div>





    <a href="youtubes.com">Terminos y condiciones</a>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
            Acepta los terminos y condiciones
        </label>
    </div>
<div class="d-flex justify-content-center">
    <button type="submit" class="btn btn-primary">Submit</button>
</div>




</form>




<c:if test="${not empty idEntrenedor}">
    <h4><span>${idEntrenedor}</span></h4>
    <br>
</c:if>









<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/personalizacionDePlan.js"> </script>
</body>
</html>
