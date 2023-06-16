<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Verificacion De Postulacion</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>

	<%
	String nombre = request.getParameter("nombreApellido");
	int edad = Integer.parseInt(request.getParameter("edad"));
	String carrera = request.getParameter("carrera");
	String email = request.getParameter("email");
	
	Usuario user = new Usuario();
	//user.ingresarPostulacion(nombre, edad, carrera, false, email);
	
	%>
	<jsp:forward page="menu.jsp">
		<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo." />
	</jsp:forward>
</body>
</html>