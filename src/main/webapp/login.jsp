<%@ page language="java" contentType="text/html; charset=UTF-8"
    session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ASU LOGIN</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>
	<!-- PACK DE ICONOS FOOTER -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	
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
	        <a href="eventos.jsp">
	            <span>Eventos</span>
	            <button class="button__aqua"></button>
	        </a>
	        <a href="developer.jsp">
	            <span>Developer</span>
	            <button class="button__aqua"></button>
	        </a>
	    </nav>
	</div>
	
	<hr class="white-line">
	<hr class="white-line">
	<br>
	
	<div class="login-box">
        <h2>Inicio de Sesión</h2>
        <form action="verificarLogin.jsp" method="post">
          <div class="user-box">
            <input type="text" name="usuario" required>
            <label>Usuario</label>
          </div>
          <div class="user-box">
            <input type="password" name="clave" required>
            <label>Contraseña</label>
          </div>
          <button href="" type="submit">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            INGRESAR
          </button>
        </form>
        
        <div class="member">
        	No estas Registrado?
			<a class="postular" href="registro.jsp">Regirtarse</a>
	</div>
        
      </div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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

</body>
</html>