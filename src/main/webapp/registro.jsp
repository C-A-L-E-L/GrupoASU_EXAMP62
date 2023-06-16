<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ASU REGISTRO</title>
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
			<img src="img\ups.png" id="ups" alt="ups" width="110px" height="110px">
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
	
	<div class="login-box" style="top: 500px;">
        <h2>Registro</h2>
        <form action="verificarRegistro.jsp" id="registro" method="post">
          <div class="user-box">
            <input type="text" name="nombreA" required>
            <label>Nombre y Apellido</label>
          </div>
          
          <div class="user-box">
            <input type="text" name="usuario" required>
            <label>Usuario</label>
          </div>
          
          <div class="user-box">
            <input type="email" name="correo"  pattern="[a-zA-Z0-9._%+-]+@est.ups.edu.ec" required>
            <label>Correo Institucional</label>
          </div>
          
          <div class="user-box">
            <input type="password" name="clave" required>
            <label>Contraseña</label>
          </div>
          
          <div class="user-box">
            <input type="password" name="clave2" required>
            <label>Verificar Contraseña</label>
          </div>

          <button href="" type="submit">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            REGISTRAR
          </button>
          
          <button type="reset">
	            <span></span>
	            <span></span>
	            <span></span>
	            <span></span>
	            REINICIAR
	       </button>
	       
	       <div class="member">
        	Ya estas Registrado?
			<a class="postular" href="login.jsp">Ingresar</a>
		   </div>
        </form>
        
        
	</div>
	
</body>
</html>