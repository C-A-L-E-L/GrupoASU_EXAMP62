<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.asu.datos.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stiles.css" rel="stylesheet" type="text/css">
	<title>INFORMACION</title>
	<!-- ICONO -->
	<link rel="icon" type="image/x-icon" href="imagenSV?id=17">
	<!-- BOOSTRAP -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
	  <!-- Font Awesome Icons -->
       <script src="https://kit.fontawesome.com/bc48b26896.js" crossorigin="anonymous"></script>
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
	</div>
	
	<hr class="white-line">
	<!-- NOMBRE JSP -->
	<div class="titulo_Asu">
		<h2 class="border">INFORMACION</h2>
		<h2 class="wave">INFORMACION</h2>
	</div>
	<br><br><br><br>
	<hr class="white-line">
	<br>
	
	 <div class="container">
      <div class="card">
      <h1>HISTORIA</h1>
        <div class="face front">
          <div class="content" id="history">
          	<img src="imagenSV?id=7" alt="img reloj">
            <!-- <img src="img\reloj.jpg" alt="reloj"/> -->
          </div>
        </div>
        <div class="face back">
          <div class="content">
            <p style=" text-align: justify; font-size: 12px">
              <br>En la UPS, un grupo de estudiantes amantes de la natación se unieron 
              para formar el grupo ASU. Con el apoyo del ANIMADOR Lic. Geovanny González, 
              reclutaron a más miembros y comenzaron a entrenar. Con el tiempo, 
              el grupo ASU empezo a participar en competiciones y promoviendo un estilo 
              de vida saludable atravez de la natación.
              
            </p>
           <!--  <a href="https://www.ups.edu.ec/natacion-quito">
			  <button>Más Detalles</button>
			</a> -->
          </div>
        </div>
      </div>
      
      <div class="card">
      <h1>TRAYECTORIA</h1>
        <div class="face front">
          <div class="content">
          	<img src="imagenSV?id=2" alt="img trayectoria">
           <!--  <img src="img\img1.png" alt="" /> -->
          </div>
        </div>
        <div class="face back">
          <div class="content">
            <p style=" text-align: justify; font-size: 12px">
              El equipo de natación de la UPS, ha participado en campeonatos, 
              representaron con una gran representacion. Han presentado baajas
              incripciones pero su dedicación y espíritu de equipo dejaron un 
              legado duradero de pasión por la natación y el éxito deportivo.
            </p>
          </div>
        </div>
      </div>
      
      <div class="card">
       <h1>ACTIVIDADES</h1>
        <div class="face front">
          <div class="content">
          	<img src="imagenSV?id=8" alt="img actividades">
           <!--  <img src="img/actividades.jpg" alt="" /> -->
          </div>
        </div>
        <div class="face back">
          <div class="content">
          <br>
          	<ul>
          		<li>Competencias Universitarias.
          		<li>Aguas Abiertas
          		<li><a href="https://depor.com/vida-sana/triatlon-ironman-en-que-consiste-la-competencia-y-cual-es-la-preparacion-actividad-fisica-deporte-competencia-deporte-extremos-ciclismo-natacion-carrera-resistencia-fisica-noticia/">Iron-man</a>
          		<li><a href="https://depor.com/full-deportes/otros-deportes/acuatlon-conoce-consiste-prepararte-competencia-102588/">Aquatlon</a>
          	</ul>
<!--             <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde ab
              repudiandae, explicabo voluptate et. aspernatur alias corporis?
            </p> -->
            <a href="https://www.ups.edu.ec/natacion-quito">
			  <button>Más Detalles</button>
			</a>
          </div>
        </div>
      </div>
      
      <div class="card">
       <h1>ENTRENAMIENTO</h1>
        <div class="face front">
          <div class="content">
          	<img src="imagenSV?id=9" alt="img entrenamiento">
            <!-- <img src="img/miraflores.jpg" alt="" /> -->
          </div>
        </div>
        <div class="face back">
          <div class="content">
          	<p style=" text-align: justify; font-size: 12px">
              El grupo ASU de natación entrena en la piscina de Miraflores en 
              Quito. Con enfoque y determinación, buscan mejorar sus habilidades
              acuáticas en un entorno inspirador. Con el apoyo de entrenadores 
              expertos y excelentes instalaciones, el grupo ASU se destaca en 
              la comunidad de la natación.
            </p>
            <a href="https://www.facebook.com/250326485000582/posts/1362923047074248/">
			  <button>Más Información</button>
			</a>
          </div>
        </div>
      </div>
      
     <div class="card">
       <h1>HORARIO</h1>
        <div class="face front">
          <div class="content">
          	<img src="imagenSV?id=10" alt="img horario">
            <!-- <img src="img/horario.jpg" alt="" /> -->
          </div>
        </div>
        <div class="face back">
          <div class="content">
          	<p style=" text-align: justify; font-size: 12px">
              El grupo ASU de natación entrena en la piscina de Miraflores en Quito.
               Durante la semana, se reúnen en horarios de tarde, y los fines de 
               semana se adaptan con sesiones de entrenamiento tanto en la mañana 
               como en la tarde.
            </p>
          </div>
        </div>
      </div>
    </div>
    
    <br><br>
    
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