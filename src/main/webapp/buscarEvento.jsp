<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.asu.eventos.*"%>
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
    
    #imgNew {
    	background: rgba(0,0,0,.5);
    	margin-left: 390px; 
    	width: 350px;
    	height: 290px;
    	border-radius: 15px;
    	padding: 5px 0 0 10px;
    	color: white;
    	align-items: center;
    }
</style>

<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>Buscar Evento</title>
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
			<img src="img\ups.png" id="ups" alt="ups" width="110px" height="110px">
		</div>
		
		<br>
		
		<!-- MENU NAV -->
		<nav class="nav__container" id="info">
			<a href="nuevoEvento.jsp">
	            <span>Nuevo E</span>
	            <button class="button__aqua"></button>
	        </a>
	        
	        <a href="eventos.jsp">
	            <span>Eventos</span>
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


	<%
	int cod = Integer.parseInt(request.getParameter("cod"));
	Evento event = new Evento();
	event.ConsultarEditarEvento(cod);
	%>
	<form class="login-box" enctype="multipart/form-data" action="actualizarImagen" method="post" style="color: white; tab-size: 4; top:600px;">
	<h1 id="tModi">MODIFICACION</h1>
	
	<table id="tab">
		<tr>
			<td><label for="cod">Código:</label></td>
			<td><input class="info" type="text" name="cod" value="<%=cod%>"/></td>
		</tr>
		<tr>
			<td><label for="nombre">Nombre:</label></td>
			<td><output><%=event.getNombre()%></output></td>
		</tr>
		<tr>
			<td><label for="descripcion">Descripción:</label></td>
			<td><select style="margin-top: 10px;" id="format" name="descripcion">
					<%-- <option value="0" disabled selected>Antigua: <%=event.getDescripcion()%></option> --%>
					<option value="Universitarias">Universitarias</option>
					<option value="Aguas Abiertas">Aguas Abiertas</option>
					<option value="Iron Man">Iron Man</option>
					<option value="Aquiation">Aquiation</option>
				</select></td>
		</tr>
		<tr>
			<td><label for="name">Lugar:</label></td>
			<td><input type="text" name="lugar" value="<%=event.getLugar()%>" /></td>
		</tr>
		<tr>
			<td><label for="name">Fecha:</label></td>
			<td><input type="text" name="fecha" value="<%=event.getFecha()%>" /></td>
		</tr>
	</table>
	
	<div class="imgEvento">
			<img id="img" src="img/perfil.png" height="100">
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
				
	<div style="display: flex; justify-content: space-between;">
		<button class="btn" type="submit" id="modi">Modificar</button>
		<button class="btn" type="reset" id="modi">Reiniciar</button>
	</div>
</form>

</body>
</html>
