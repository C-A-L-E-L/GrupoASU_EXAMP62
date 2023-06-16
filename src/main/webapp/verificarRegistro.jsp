<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Verificacion Registro</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>
	<%
	String nombre = request.getParameter("nombreA");
	String usuario = request.getParameter("usuario");
	String email = request.getParameter("correo");
	String clave = request.getParameter("clave");
	String clave2 = request.getParameter("clave2");
	
	if(clave.equals(clave2)){
		Usuario user =new Usuario();
		user.ingresarUsuario(nombre, "Postulante", usuario, clave,2,email);
	}
	%>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo." />
	</jsp:forward>
</body>
</html>