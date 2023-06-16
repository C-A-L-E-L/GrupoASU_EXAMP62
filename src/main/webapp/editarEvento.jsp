<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.eventos.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ASU EDITAR EVENTO</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
<body>
	<%
	int cod = Integer.parseInt(request.getParameter("cod"));
	String des = request.getParameter("descripcion");
	String lugar = request.getParameter("lugar");
	String fecha = request.getParameter("fecha");
	
	Evento event = new Evento();
	boolean actualizado = event.ModificarEvento(cod,des,lugar,fecha);
	if(actualizado == true){
		 response.sendRedirect("modificarEvento.jsp");
	 }else {
		 out.print("Algo salio mal");
	 }
	%>
</body>
</html>