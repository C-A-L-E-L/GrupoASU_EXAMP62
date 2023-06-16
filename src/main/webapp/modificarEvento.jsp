<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.eventos.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Modificar Evento</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
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
			<a href="menu.jsp">
	            <span>Menu</span>
	            <button class="button__aqua"></button>
	        </a>
	        
			<a href="nuevoEvento.jsp">
	            <span>Nuevo E</span>
	            <button class="button__aqua"></button>
	        </a>
		
			<a href="editarEvento.jsp">
	            <span>Postulantes</span>
	            <button class="button__aqua"></button>
	        </a>
		
	        <a href="editarEvento.jsp">
	            <span>Cerrar Sesion</span>
	            <button class="button__aqua"></button>
	        </a>
	    </nav>
	</div>
	
	<hr class="white-line">
	<!-- NOMBRE JSP -->
	<div class="titulo_Asu">
		<h2 class="border">EDITAR EVENTO</h2>
		<h2 class="wave">EDITAR EVENTO</h2>
	</div>
	<br><br><br><br>
	<hr class="white-line">

	<div class="table_eventos">
	<%
	Evento event = new Evento();
	String tabla= event.consultarTodoEdicion();
	out.print(tabla);
	%>
	</div>
	
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