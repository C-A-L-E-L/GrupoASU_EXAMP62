<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.asu.seguridad.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ASU MENU</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
		crossorigin="anonymous">
	<!-- Font Awesome Icons -->
	<script src="https://kit.fontawesome.com/bc48b26896.js"
		crossorigin="anonymous"></script>
</head>

<body>
	<div class="encabezado">
		<!-- IMG INCIAL -->
		<div class="div_ups">
			<img src="imagenSV?id=14" id="ups" alt="img ups" width="110px" height="110px">
			<!-- <img src="img\ups.png" id="ups" alt="ups" width="110px" height="110px"> -->
		</div>
		
		<!-- NOMBRE ASU -->
		<div class="titulo_Asu">
			<h2 class="border">PARTE PRIVADA</h2>
			<h2 class="wave">PARTE PRIVADA</h2>
		</div>
	</div>
	
	<hr class="white-line">
	<hr class="white-line">
	<br>
		<%
			String usuario;
			HttpSession sesion = request.getSession();
			if (sesion.getAttribute("usuario") == null){ //Se verifica si existe la variable
				%>
				<jsp:forward page="login.jsp">
				<jsp:param name="error" value="Debe registrarse en el sistema."/>
				</jsp:forward>
				<%
			}else {
				usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
				int perfil=(Integer)sesion.getAttribute("perfil");
				%>
				
				<div class="menus" >
					<h4>Bienvenido <%out.println(usuario);%></h4> 
					<br>
					<%
					Pagina pag=new Pagina();
					String menu=pag.mostrarMenu(perfil);
					out.print(menu);
					%>
				</div>
			<% } %>
	</body>
</html>