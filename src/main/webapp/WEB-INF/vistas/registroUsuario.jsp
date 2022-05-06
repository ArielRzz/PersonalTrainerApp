<!-----------------------------------------------header------------------------------------------------------------->
<%@include file="header.jsp"%>
<!-----------------------------------------------header------------------------------------------------------------->

<div class = "container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <form:form action="registrar-usuario" method="POST" modelAttribute="usuario">
            <h3 class="form-signin-heading">Nuevo Usuario</h3>
            <hr class="colorgraph"><br>

            <form:input path="email" id="email" class="form-control" />
            <form:input path="password" type="password" id="clave" class="form-control"/>

            <button id="btn-registrarme" class="btn btn-lg btn-primary btn-block" Type="Submit"/>Registrarme</button>
        </form:form>

        <c:if test="${not empty error}">
            <h4><span>${error}</span></h4>
            <br>
        </c:if>
    </div>
</div>
<!-------------------------------------------Footer----------------------------------------------------------------->
<%@include file="footer.jsp"%>
<!-------------------------------------------Footer----------------------------------------------------------------->
