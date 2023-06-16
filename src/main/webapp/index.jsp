<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>ASU NATACION</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP (PUEDE AFECTAR EL STILO "BACKGROUD") -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>

<body>
	<!-- CARRUSEL BOOSTRAP -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
		
	<!-- PACK DE ICONOS FOOTER -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="¡CSS Válido!" />
    </a>
</p>
	<!-- IMG INCIAL -->
	<div class="div_Incial">
		<!-- <img src="img\img10.jpg" class="inicial" id="incial" alt="img incial">
		<br> -->
		<img src="imagenSV?id=1" class="inicial" id="incial" alt="img incial">
	</div>
	
	<br>
	
	<!-- MENU NAV -->
	<nav class="nav__container">
        <a href="informacion.jsp">
            <span>Informacion</span>
            <button class="button__aqua"></button>
        </a>
        <a href="eventos.jsp">
            <span>Eventos</span>
            <button class="button__aqua"></button>
        </a>
        <a href="login.jsp">
            <span>Login</span>
            <button class="button__aqua"></button>
        </a>
        <a href="developer.jsp">
            <span>Developer</span>
            <button class="button__aqua"></button>
        </a>
    </nav>
    
    <br><br>
    
    <div class="info_Total">
    	<!-- INFO GRUPO ASU -->
	    <article class="info_ASU">
			<br><br><br>
			 <!-- DESCRIPCION ASU -->
			<div class="descripcion_Asu">
				<p class="text_descripcion" style="text-align: justify;">
					El equipo de natación es como una gran familia unida 
					por nuestra pasión por este deporte. Nos enorgullece 
					promover una disciplina que demanda fortaleza, técnica 
					y resistencia, pero sobre todo, que nos permite generar 
					una actitud sana, competitiva y enfocada en alcanzar 
					nuestras metas. Juntos, trabajamos incansablemente para 
					superarnos y alcanzar nuestros objetivos deportivos y 
					personales, alentándonos y apoyándonos mutuamente en 
					cada entrenamiento y competición. Nos esforzamos por ser 
					un equipo unido, comprometido y que deja todo en la 
					piscina, ¡y estamos muy felices de ser parte de esta familia!
				</p>
			</div>
			<br>
			
			<!-- NOMBRE ASU -->
		    <div class="titulo_Asu">
			    <h2 class="border">NATACION</h2>
			    <h2 class="wave">NATACION</h2>
			</div>
	    </article>
	    
	    <!-- CARRUSEL BOOSTRAP --> 														   <!-- CONTROLAR TIEMPO --> 
		<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="imagenSV?id=2" class="d-block w-60 h-70 mw-100 mh-100" alt="img entranamiento">	
		      <!-- <img src="img\img1.png" class="d-block w-60 h-70 mw-100 mh-100" alt="img entranamiento"> -->
		    </div>
		    <div class="carousel-item">
		    	<img src="imagenSV?id=3" class="d-block w-60 h-70 mw-100 mh-100" alt="img competencia">	
		      <!-- <img src="img\img2.png" class="d-block w-60 h-70 mw-100 mh-100" alt="img competencia"> -->
		    </div>
		    <div class="carousel-item">
		    <img src="imagenSV?id=4" class="d-block w-60 h-70 mw-100 mh-100" alt="img participacion">	
		      <!-- <img src="img\img3.png" class="d-block w-60 h-70 mw-100 mh-100" alt="img participacion"> -->
		    </div>
		  </div>
		</div> 
    </div>
    <br>
    
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