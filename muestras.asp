<!DOCTYPE HTML>
<html>
	<head>
		<title>Diseño Web Moderno</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300italic,600|Source+Code+Pro" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/w3css/3/w3.css">
        <link rel="stylesheet" href="src/font-awesome-animation.css">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
		<!--[if lte IE 8]><script src="html5shiv.js" type="text/javascript"></script><![endif]-->
        






		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>		
		<script src="js/skel.min.js">
		{
			prefix: 'css/style',
			preloadStyleSheets: true,
			resetCSS: true,
			boxModel: 'border',
			grid: { gutters: 30 },
			breakpoints: {
				wide: { range: '1200-', containers: 1140, grid: { gutters: 50 } },
				narrow: { range: '481-1199', containers: 960 },
				mobile: { range: '-480', containers: 'fluid', lockViewport: true, grid: { collapse: true } }
			}
		}
		</script>
		<script>
			$(function() {

				// Note: make sure you call dropotron on the top level <ul>
				$('#main-nav > ul').dropotron({ 
					offsetY: -10 // Nudge up submenus by 10px to account for padding
				});

			});
		</script>
		<script>
			// DOM ready
			$(function() {
    
			// Create the dropdown base
			$("<select />").appendTo("nav");
   
			// Create default option "Go to..."
			$("<option />", {
				"selected": "selected",
				"value"   : "",
				"text"    : "Menu"
			}).appendTo("nav select");
   
			// Populate dropdown with menu items
			$("nav a").each(function() {
			var el = $(this);
			$("<option />", {
				"value"   : el.attr("href"),
				"text"    : el.text()
			}).appendTo("nav select");
			});
   
			// To make dropdown actually work
			// To make more unobtrusive: http://css-tricks.com/4064-unobtrusive-page-changer/
			$("nav select").change(function() {
				window.location = $(this).find("option:selected").val();
			});
  
			});
		</script>	

         <style>
            .mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 785px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 25px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
            
            
    .mySlides {
   visibility: visible !important;
     -webkit-transition: opacity 3s ease-in-out;
     -moz-transition: opacity 3s ease-in-out;
     -o-transition: opacity 3s ease-in-out;
     transition: opacity 3s ease-in-out;
 }         
            
            
             #eslogan {
                 
                
                 
             }
             
                          
             
             /*ESTILO MENU RESPONSIVE*/
             
             
           .menu{
                 float: right;
                 
             }  
             
             /*Ejercicios de menu responsive*/

             .topnav {
               
                 background-color:  #333;
                 overflow: hidden;
                 
             }
                 
                 .topnav a {
                 float: left;
                 display: block;
                 color: #f2f2f2;
                  text-align: center;
                   padding: 14px 16px;
                   text-decoration: none;
    font-size: 17px;
             }
             
             .topnav a:hover {
                 background-color: #ddd;
                 color: black;
                 
                 
             }
             
             .topnav .icon {
                 
                 display: none;
             }


             @media screen and (max-width: 600px) {
                 

                 .topnav a:not(:first-child) {
                     display: none;
                 }

                 .topnav a.icon {
                     float: right;
                     display: block;
                 }


                 @media screen and (max-width: 600px) {
                     
               
                     
                     
                     .topnav.responsive {
                         position: relative;
                     }

                     .topnav.responsive a.icon {
                         position: absolute;
                         right: 0;
                         top: 0;
                     }

                     .topnav.responsive a {
                         float: none;
                         display: block;
                         text-align: left;
                     }
                 }
             }

             @media screen and (max-width: 600px) {
                 .menu {
                     display: none;
                 }
             }
             @media screen and (min-width: 600px) {
                 
               .elmenu {
                 display: none;
             }
                 
             }
             
             
             
             
             
        </style>
        <!--SCRIPT QUE CONTROLA EL ELEMENTO TOPNAV -->
        <script>

            function myFunction() {
                var x = document.getElementById("myTopnav");
                if (x.className === "topnav") {
                    x.className += " responsive";

                } else {
                    x.className = "topnav";
                }


            }

        </script>
            
        </style>




	</head>

    


	<body style="overflow-x: hidden">
        <!--ENCABEZADO-->
		<div id="header" class="row">
					<div class="4u">
						<div class="transparent">
							<a href="https://juandavidarce.neocities.org/" target="_blank"><img src="https://juandavidarce.neocities.org/Images/logo_horizontal.png" </a>
							<h2 id="eslogan">Diseño Web y mantenimiento back-end</h2>
					    </div>
					</div>
					<!--MENU-->
					<nav id="main-nav" class="menu">
						<ul>
							<li><a class="active" href="index.html">Inicio</a></li>
							<li><a href="https://juandavidarce.neocities.org/" target="_blank">Hoja de vida</a></li>
													
							<li>
								<a href="muestras.asp">Plantillas</a>			
									<ul>
										<li><a href="http://sutil.azurewebsites.net/" target="_blank">Sutil</a></li>
										<li><a href="http://muestrapagina.azurewebsites.net/" target="_blank">Galeria</a></li>
									<li>
											
										</li>
									</ul>
							</li>

                            	<li>
								<a href="muestras.asp">Ejemplos</a>			
									<ul>
                                        <li><a href="http://juandavidarce.azurewebsites.net/diapositivasfondo/index4.html" target="_blank">Fondo dinámico</a></li>
									<li>
										<li><a href="http://juandavidarce.azurewebsites.net/weathericons.html" target="_blank">Iconos Clima</a></li>
										<li><a href="http://juandavidarce.azurewebsites.net/menuresponsiveejemplo.html" target="_blank">Responsive Flexbox</a></li>
									<li>
											
										</li>
									</ul>
							</li>
							<li><a href="contact.php">Contacto</a></li>
						</ul>
					</nav>
				</div>
			</div>	
            <!--MENU EJERCICIOS RESPONSIVE-->
            <div class="elmenu">
            <div class="topnav" id="myTopnav">
  <a href="index.html">Inicio</a>
  <a href="https://juandavidarce.neocities.org/">Hoja de vida</a>
  <a href="contact.php">Contacto</a>
  <a href="muestras.asp">Muestras</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>
                </div>	


        <!--Muestras-->
        <div class="w3-card-4" style="max-width: 100%; max-height:100%; width:700px; height:350px; margin: auto; margin-bottom: 160px">
    <header class="w3-container w3-blue">
      <h1>Sutil</h1>
    </header>
       <div class="w3-container" style="max-width: 100%; max-height: 100%; margin: auto">
     <a href="http://sutil.azurewebsites.net/" target="_blank"> <img src="https://juandavidarce.neocities.org/Images/mockup1.svg" alt="Avatar" style="max-width: 100%; max-height: 100%"> </a>
    </div>
  

    <footer class="w3-container w3-blue">
     <a href="http://sutil.azurewebsites.net/" target="_blank">   <h5>Ir a la plantilla</h5></a>
    </footer>
  </div>

        <div class="w3-card-4" style="max-width: 100%; max-height:100%; width:700px; height:350px; margin: auto;margin-bottom: 160px">
    <header class="w3-container w3-blue">
      <h1>Galeria</h1>
    </header>
     
    <div class="w3-container" style="max-width: 100%; max-height: 100%; margin: auto">
     <a href="http://muestrapagina.azurewebsites.net/" target="_blank"> <img src="https://juandavidarce.neocities.org/Images/galeria.svg" alt="Avatar" style="max-width: 100%; max-height: 100%"> </a>
    </div>
       

    <footer class="w3-container w3-blue">
      <a href="http://muestrapagina.azurewebsites.net/" target="_blank"> <h5>Ir a la plantilla</h5> </a>
    </footer>
  </div> 
     
  <!--Footer-->
			<div class="container">			
			<!-- Footer -->
				<footer>
					<p> <a href="https://twitter.com/juandavidarce" target="_blank"><img src="images/twitter.png" alt="twitter" /></a>
                      <a href="https://www.facebook.com/juandavid.tabaresarce" target="_blank"><img src="images/facebook.png" alt="facebook" /></a> 
                   
					<p><a href="index.html">Inicio</a> | <a href="https://juandavidarce.neocities.org/" target="_blank">Hoja de vida</a> | <a href="muestras.asp">Muestras</a> |<a href="contact.php">Contacto</a></p>
					<p>Copyright &copy; 2017 <a href="https://juandavidarce.neocities.org/" target="_blank">Juan David Tabares Arce</a> </p>
				</footer>		
			</div>	


       

        	
			
	</body>
</html>
