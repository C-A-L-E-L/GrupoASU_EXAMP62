<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.seguridad.*"%>
<!DOCTYPE html>
<style>
	#tab {
		color: white;
	}

	#modi {
		color: #03e9f4; 
		width: 150px;
	}
	
    #modi:hover {
        color: black;
    }
</style>

<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Buscar Postulante</title>
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
	Postulacion user = new Postulacion();
	user.ConsultarEditarPostulacion(cod);
	%>
	
	<form class="login-box" action="editarPostulacion.jsp" method="post" style="color: white; tab-size: 4; white-space: pre;">
	<h1 style="text-align: center;">Postulante</h1>
	
	
	<table id="tab">
		<tr>
			<td><label for="cod">ID:</label></td>
			<td><input type="text" name="cod" value="<%=cod%>" readonly/></td>
		</tr>
		<tr>
			<td><label for="nombre">Nombre:</label></td>
			<td><output><%=user.getNombre()%></output></td>
		</tr>
		<tr>
			<td><label for="descripcion">Edad:</label></td>
			<td><output><%=user.getEdad()%></output></td>
		</tr>
		<tr>
			<td><label for="descripcion">Carrera:</label></td>
			<td><output><%=user.getCarrera()%></output></td>
		</tr>
		
		<tr>
			<td><label for="descripcion">Estado (<%=user.getEstado()%>):</label></td>
			<td><select style="margin-top: 10px;" id="format" name="estates">
					<option value="Aprobar">Aprobar</option>
					<option value="Rechazar">Rechazar</option>
				</select></td>
		</tr>
		<tr>
			<td><label for="descripcion">Correo Institucional: </label></td>
			<td><output><%=user.getEmail()%></output></td>
		</tr>
		
		<tr>
			<td><label for="descripcion">Hoja de Vida: </label></td>
			<%-- <td><output><%=user.getEmail()%></output></td> --%>
		</tr>
	</table>
				
	<div style="display: flex; justify-content: space-between;">
		<button class="btn" type="submit" id="modi">Modificar</button>
		<button class="btn" type="reset" id="modi">Reiniciar</button>
	</div>
</form>
</body>
</html>