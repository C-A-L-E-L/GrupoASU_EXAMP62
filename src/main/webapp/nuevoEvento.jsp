<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.asu.eventos.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>AGREGAR EVENTOS</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" 
	 integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
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
	        
			<a href="modificarEvento.jsp">
	            <span>Modificar E</span>
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
		<h2 class="border">NUEVO EVENTO</h2>
		<h2 class="wave">NUEVO EVENTO</h2>
	</div>
	<br><br><br><br>
	<hr class="white-line">>

	<div class="login-box" id="newEvento" style="top: 670px">
		<h2>Nuevo Evento</h2>
		<form action="cargarImagen" method="post" enctype="multipart/form-data" name="format" id="format">	
			<div class="user-box">
				<input type="number" name="cod" id="cod" required/>
				 <label>Codigo Evento</label>
			</div>
		
			<div class="imgEvento">
				<img src="imagenSV?id=15" id="img" height="100">
				<!-- <img id="img" src="img/perfil.png" height="100"> -->
			</div>
			<input class="inputFile" type="file" name="input" id="input">
	
			<script>	/* Verificar img */
				let img = document.getElementById("img");
				let input = document.getElementById("input");
				input.onchange = (e) => {
			    	if (input.files[0]) img.src = URL.createObjectURL(input.files[0]);
			  	};
			</script>
	
			<br><br>
			<div class="user-box">
			<input type="text" name="lugar" id="lugar" required />
			<label>Lugar del Evento</label> 
			</div>
			
			<h4 style="color: #03e9f4; font-size: 12px; font-family: 'Open Sans', sans-serif; font-weight: 300;">Fecha</h4>			
			<div class="user-box">
			<input type="date" name="fecha" id="fecha" required/>
			</div>
						
			<select name="format" id="format">
				<option value="0" disabled selected>Seleccionar Categoria. </option>
				<option value="Universitarias">Universitarias</option>
				<option value="Aguas Abiertas">Aguas Abiertas</option>
				<option value="Iron Man">Iron Man</option>
				<option value="Aquiation">Aquiation</option>
			</select>
			
			<br><br>
			
			<button type="submit">
	            <span></span>
	            <span></span>
	            <span></span>
	            <span></span>
	            AGREGAR
          	</button>
          
          	<button type="reset">
	            <span></span>
	            <span></span>
	            <span></span>
	            <span></span>
	            REINICIAR
	       </button>
		</form>
	</div>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!-- SOCIAL COPYRITH -->
	<footer>
		<div class="menu">
		    <a href="https://wa.me/593979007272" class="link" style="--color: #3b5998">
		      <i class="link-icon fa fa-whatsapp"></i>
		        <span class="link-title">Whatsapp</span>
		    </a>
		    <a href="mailto:ggonzalezv@ups.edu.ec" class="link" style="--color: #00aff0;">
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