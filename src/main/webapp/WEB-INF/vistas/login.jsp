
	<!-----------------------------------------------header------------------------------------------------------------->
	<%@include file="header.jsp"%>
	<!-----------------------------------------------header------------------------------------------------------------->
	<div class = "container">
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<%--Definicion de un form asociado a la accion /validar-login por POST. Se indica ademas que el model attribute se--%>
				<%--debe referenciar con el nombre usuario, spring mapea los elementos de la vista con los atributos de dicho objeto--%>
					<%--para eso debe coincidir el valor del elemento path de cada input con el nombre de un atributo del objeto --%>
				<form:form action="validar-login" method="POST" modelAttribute="datosLogin">
			    	<h3 class="form-signin-heading">Taller Web I</h3>
					<hr class="colorgraph"><br>

					<%--Elementos de entrada de datos, el elemento path debe indicar en que atributo del objeto usuario se guardan los datos ingresados--%>
					<div class="form-outline mb-4">
						<form:input path="email" type="email" id="form1Example1" class="form-control" />
						<label class="form-label" for="form1Example1">Email address</label>
					</div>
					<%--<form:input path="email" id="email" type="email" name="email" class="form-control" />--%>

					<div class="form-outline mb-4">
						<form:input path="password" type="password" id="form1Example2" class="form-control" />
						<label class="form-label" for="form1Example2">Password</label>
					</div>
					<%--<form:input path="password" type="password" id="password"  name="password" class="form-control"/>--%>
					
					<button class="btn btn-lg btn-primary btn-block" Type="Submit"/>Login</button>
				</form:form>
				<a href="<c:url value="/registrarme"/>">Registrarme</a>
				<%--Bloque que es visible si el elemento error no esta vacio	--%>
				<c:if test="${not empty error}">
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>
				${msg}
			</div>
		</div>


	<!-------------------------------------------Footer----------------------------------------------------------------->
	<%@include file="footer.jsp"%>
	<!-------------------------------------------Footer----------------------------------------------------------------->
	</body>
</html>
