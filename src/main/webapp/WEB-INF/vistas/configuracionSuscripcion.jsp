<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Font Awesome -->
    <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
    href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
    rel="stylesheet"
    />
    <!-- MDB -->
    <link
    href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.0.0/mdb.min.css"
    rel="stylesheet"
    />
</head>
<body style="background-color: antiquewhite;">
<!-----------------------------------------------header------------------------------------------------------------->
<%@include file="header.jsp"%>
<!-----------------------------------------------header------------------------------------------------------------->

<div class="container-sm px-5 pt-5">
  <div class="card mg-5">
      <div class="card-header"style="font-size: 1.5rem;">
          Su suscripcion
      </div>
      <div class="card-body">
        <blockquote class="blockquote mb-0">
          <p>Mejorà tu plan y accede a màs beneficios para tu entrenamiento.</p>
          <div class="d-grid gap-4 col-5 mx-auto">
              <button class="btn btn-primary" type="button">Mejorar Plan</button>
            </div>
        </blockquote>
      </div>
    </div>
    <div class="card mg-5 mt-5 ">
      <div class="card-header"style="font-size: 1.5rem;">
      Cuenta
      </div>
      <div class="card-body">
          <div class="container">
              <div class="row mb-3">
                <div class="col">
                  Email
                </div>
                <div class="col">
                  El email de verificación ha sido enviado. 
                  Si no lo recibiste, por favor revisa tus carpetas de correo.
                  Reenviar email de verificación
                </div>
                <div class="col">
                  Cambiar correo electronico
                </div>
              </div>

              <div class="row mb-3">
                  <div class="col">
                    Contraseña
                  </div>
                  <div class="col">
                    ******
                  </div>
                  <div class="col">
                    Cambiar Contraseña
                  </div>
                </div>

                <div class="row mb-3">
                  <div class="col">
                    Cumpleaños
                  </div>
                  <div class="col">
                    August22,1991
                  </div>
                  <div class="col">
                    Actualiza Cumpleaños
                  </div>
                </div>
            </div>
      </div>
    </div>
    <div class="card mg-5 mt-5 ">
      <div class="card-header d-flex justify-content-between" style="font-size: 1.5rem;">
      Notificaciones
      </div>
      <div class="card-body">
          <div class="container">
              <div class="row mb-3">
                <div class="col">
                  Boletín
                </div>
                <div class="col">
                  ¡Envíame correos electrónicos ocasionales sobre próximos programas, noticias y promociones!
                </div>
                <div class="col d-flex justify-content-center">
                  <!-- Default switch -->
                  <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault" />
                    <label class="form-check-label " for="flexSwitchCheckDefault"></label>
                  </div>
                </div>
              </div>

            </div>
      </div>
    </div>
    <div class="card mg-5 mt-5">
      <div class="card-header d-flex justify-content-between" style="font-size: 1.5rem;">
      Facturacion
      <button type="button" class="btn btn-outline-danger">Cancelar Suscripcion</button>
      </div>
      <div class="card-body">
      </div>
    </div>
</div>
<!-------------------------------------------Footer----------------------------------------------------------------->
<%@include file="footer.jsp"%>
<!-------------------------------------------Footer----------------------------------------------------------------->
</body>
</html>