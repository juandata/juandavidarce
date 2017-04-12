<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300italic,600|Source+Code+Pro" rel="stylesheet" />
   
		<!--[if lte IE 8]><script src="html5shiv.js" type="text/javascript"></script><![endif]-->
        <style>


            #logo {
                position: relative;
                top: -15px;
                right: -20px;
                margin-bottom: -3%;
            }
            label {
                display: block;
                margin: 20px;
                letter-spacing: 2px;
            }
    
    /* Centre the page */
            .formulario {
                display: block;
                margin: 0 auto;
                width: 600px;
                font-family: monospace;
                font-size: 22px;
            }

       
        </style>



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

	</head>
	

    <body>

         <header class="body">
  

		<div id="header_container">		
		    <div class="container">
			<!-- Header -->
				<div id="header" class="row">
					<div class="4u">
						<div class="transparent">
							<a href="https://juandavidarce.neocities.org/" target="_blank"><img src="https://juandavidarce.neocities.org/Images/logo_horizontal.png" </a>
							<h2>Diseño Web y mantenimiento back-end</h2>
					    </div>
					</div>
					
					<nav id="main-nav" class="8u">
						<ul>
							<li><a class="active" href="index.html">Inicio</a></li>
							<li><a href="https://juandavidarce.neocities.org/" target="_blank">Hoja de vida</a></li>
													
							<li>
								<a href="#">Muestras</a>			
									<ul>
										<li><a href="http://sutil.azurewebsites.net/" target="_blank">Sutil</a></li>
										<li><a href="http://muestrapagina.azurewebsites.net/" target="_blank">Galeria</a></li>
										<li>
											<a href="#">Wordpress</a>
												<ul>
													<li><a href="#">E-commerce</a></li>
													<li><a href="#">Blog</a></li>
													<li><a href="#">Revista</a></li>
													
												</ul>
										</li>
									</ul>
							</li>
							<li><a href="contact.php">Contacto</a></li>
						</ul>
					</nav>
				</div>
                </div>
             </div>
              </header>
         <!--formulariodecontacto-->
        <section class="formulario">


   <form method="post" action="index.php">
        
    <label>Name</label>
    <input name="name" placeholder="Escriba aquí">
            
    <label>Email</label>
    <input name="email" type="email" placeholder="Escriba aquí">
            
    <label>Message</label>
    <textarea name="message" placeholder="Escriba aquí" rows="10" cols="70"></textarea>
            
    <input id="submit" name="submit" type="submit" value="Submit">
    <label>*What is 2+2? (Anti-spam)</label>
            <input name="human" placeholder="Escriba aquí">   
    </form>
            



            <!--codigo php-->
            <?php
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $from = 'From: TangledDemo'; 
    $to = 'demo@tangledindesign.com'; 
    $subject = 'Hello';
    $human = $_POST['human'];
			
    $body = "From: $name\n E-Mail: $email\n Message:\n $message";
				
    if ($_POST['submit'] && $human == '4') {				 
        if (mail ($to, $subject, $body, $from)) { 
	    echo '<p>Your message has been sent!</p>';
	} else { 
	    echo '<p style="color:green">Su mensaje se ha enviado correctamente, pronto me comunicaré con usted.</p>'; 
	} 
    } else if ($_POST['submit'] && $human != '4') {
	echo '<p style="color:red">La respuesta es incorrecta, intentelo nuevamente.</p>';
    }

    $fp = fopen('myfile.txt', 'w');
fwrite($fp, "$name.$email.$message,\
");
fclose($fp);






?>



     



        


  





         </section>






      <footer class="body">



      </footer>




            	
			
	</body>







</html>
