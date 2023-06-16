<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.asu.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ESTADO POSTULACION</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>
	<div class="encabezado">
		<!-- IMG INCIAL -->
		<div class="div_ups">
			<img src="img\ups.png" id="ups" alt="ups" width="110px" height="110px">
		</div>
		
		<br>
		
		<!-- MENU NAV -->
		<nav class="nav__container" id="info">
			<a href="menu.jsp">
	            <span>Menu</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="eventos.jsp">
	            <span>Eventos</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="postulante.jsp">
	            <span>Postular</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="cerrarSession.jsp">
	            <span>Cerrar Session</span>
	            <button class="button__aqua"></button>
	        </a>
	    </nav>
	</div>
	
	<hr class="white-line">
	<!-- NOMBRE JSP -->
	<div class="titulo_Asu">
		<h2 class="border">ESTADO POSTULACION</h2>
		<h2 class="wave">ESTADO POSTULACION</h2>
	</div>
	<br><br><br><br>
	<hr class="white-line">
	
	<div class="table_eventos">	
	<%
	HttpSession sesion = request.getSession();
	int id_us = (Integer)sesion.getAttribute("id");
	Postulacion postulante = new Postulacion();
    out.println(postulante.ConsultarEstadoPostulacion(id_us));
	%>
	</div>
</body>
</html>