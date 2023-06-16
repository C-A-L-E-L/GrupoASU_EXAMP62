<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.asu.eventos.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>EVENTOS</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" 
	 integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">

<style>
th {
	border-color: black;
}

td {
	border-color: black;
}
</style>

</head>
<body>
	<!-- PACK DE ICONOS FOOTER -->
	<link rel="stylesheet" 
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	
	<div class="encabezado">
		<!-- IMG INCIAL -->
		<div class="div_ups">
			<img src="imagenSV?id=14" id="ups" alt="img ups" width="110px" height="110px">
			<!-- <img src="img\ups.png" id="ups" alt="ups" width="110px" height="110px"> -->
		</div>
		
		<br>
		
		<!-- MENU NAV -->
		<nav class="nav__container" id="info">
	        <a href="index.jsp">
	            <span>Inicio</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="informacion.jsp">
	            <span>Informacion</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="login.jsp">
	            <span>Login</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="developer.jsp">
	            <span>Developer</span>
	            <button class="button__aqua"></button>
	        </a>
	    </nav>
	</div>
	
	<hr class="white-line">
	<!-- NOMBRE JSP -->
	<div class="titulo_Asu">
		<h2 class="border">EVENTOS</h2>
		<h2 class="wave">EVENTOS</h2>
	</div>
	<br><br><br><br>
	<hr class="white-line">
	<br><br>
	
	<!-- TABLA DE EVENTOS -->
	<%-- <%
		Evento event = new Evento();
		String tabla = event.consultarTodo();
		out.print(tabla);
		%> --%>
		<%-- <div class="table_eventos">
			<%
			Evento event = new Evento();
			String tabla = event.consultarTodo();
			out.print(tabla);
			%>
		</div> --%>
		<div class="table_eventos">
			<%
			Evento event = new Evento();
			String tabla = event.consultarTodo();
			out.print(tabla);
			%>
		</div>
	 
	<!-- SOCIAL COPYRITH -->
	<footer>
		<div class="menu">
		    <a href="https://wa.me/593979007272" class="link" style="--color: #3b5998">
		      <i class="link-icon fa fa-whatsapp"></i>
		        <span class="link-title">Whatsapp</span>
		    </a>
		    <a href="mailto:cdsalcan131@gmail.com" class="link" style="--color: #00aff0;">
		      <i class="link-icon fa fa-phone"></i>
		      <span class="link-title">3962900</span>
		    </a>
		    <a href="https://www.ups.edu.ec/natacion-quito" class="link" style="--color: #1e2e77">
		      <i class="link-icon fa fa-university"></i>
		      <span class="link-title">UPS</span>
		    </a>
		  </div>
			
		<div class="copy_Text">
			<p>Derechos de Autor &copy; 2023 Grupo ASU Natación</p>
		</div>
	</footer>
	<br>	
</body>
</html>