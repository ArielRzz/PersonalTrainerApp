<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="es">
<head>
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
    <title>Title</title>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <!-- Container wrapper -->
    <div class="container-fluid">

        <!-- Collapsible wrapper -->
        <div class="navbar" id="navbarSupportedContent">
            <!-- Navbar brand -->
            <a class="navbar-brand mt-2 mt-lg-0" href="<c:url value="/login"/>">
                <img
                        src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
                        height="15"
                        alt="MDB Logo"
                        loading="lazy"
                />
            </a>
        </div>
        <button type="button" class="btn btn-link px-3 me-2">
            <a href="<c:url value="/mostrarPlanes"/>">Planes</a>
        </button>
        <!-- Collapsible wrapper -->
        <!-- Right elements -->
        <%--<c:set value="${usuario.email}" var="object"/>--%>
        <c:set value="${sessionScope.ROL }" var="object"/>
        <c:if test="${object == null}">
            <div class="d-flex align-items-center">
                <button type="button" class="btn btn-link px-3 me-2">
                    <a href="<c:url value="/login"/>">Login</a>
                </button>
                <button type="button" class="btn btn-primary me-3">
                    <a href="<c:url value="/registrarme"/>" class="text-white">Sign up for free</a>
                </button>
            </div>
        </c:if>
<%--        <c:set value="${usuario.email}" var="object"/>--%>
        <c:set value="${sessionScope.ROL }" var="object"/>
        <c:if test="${object !=null}">
            <div class="d-flex align-items-center">
                <!-- Notifications -->
                <div class="dropdown">
                    <a
                            class="text-reset me-3 dropdown-toggle hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                    >
                        <i class="fas fa-bell"></i>
                        <!-- Notificacion -->
                        <span class="badge rounded-pill badge-notification bg-danger"></span>
                    </a>
                    <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                    >
                        <li>
                            <a class="dropdown-item" href="#">Notificacion 1</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">Notificacion 2</a>
                        </li>
                    </ul>
                </div>
                <!-- Avatar -->
                <div class="dropdown">
                    <a
                            class="dropdown-toggle d-flex align-items-center hidden-arrow"
                            href="#"
                            id="navbarDropdownMenuAvatar"
                            role="button"
                            data-mdb-toggle="dropdown"
                            aria-expanded="false"
                    >
                        <img
                                src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                                class="rounded-circle"
                                height="25"
                                alt="Black and White Portrait of a Man"
                                loading="lazy"
                        />
                    </a>
                    <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuAvatar"
                    >
                        <li>
                            <a class="dropdown-item" href="#">Perfil</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="<c:url value="/ir-a-configuracion"/>">Suscripcion y Configuracion</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="<c:url value="/cerrarSesion"/>">Cerrar Sesion</a>
                        </li>
                    </ul>
                </div>

            </div>

        </c:if>

        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->

