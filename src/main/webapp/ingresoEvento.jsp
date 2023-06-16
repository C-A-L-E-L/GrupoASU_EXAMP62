<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --%>
	
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.asu.eventos.*" import="javax.servlet.http.Part"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Verificacion De Ingreso</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>

<body>
	<h1>Evento</h1>
	<%		
	String descripcion = request.getParameter("format");
	String lugar = request.getParameter("lugar");
	String fecha = request.getParameter("fecha");
	    	
	Evento event = new Evento();
	//event.ingresarEvento(10, "Competencia", descripcion, lugar, fecha, request.getPart("input"));
	
	//out.print(event.mostrarFoto());
	%>

</body>
</html>