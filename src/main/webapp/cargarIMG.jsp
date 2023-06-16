<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>CARGAR IMAGEN</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>
	<div class="login-box">
		<form action="imagenSV" method="POST" enctype="multipart/form-data" style="color:white;">
	        <label for="entero">ID:</label>
	        <input type="number" id="id" name="id" required>
	
	        <br>
	
	        <label for="texto">Nombre:</label>
	        <input type="text" id="texto" name="texto" required>
	
	        <br>
	
	        <label for="imagen">Imagen:</label>
	        <input type="file" id="imagen" name="imagen" accept="image/*" required>
	
	        <br>
	
	        <input type="submit" value="Enviar">
	    </form>
	  </div>
</body>
</html>