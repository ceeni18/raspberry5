<<<<<<< HEAD:src/main/webapp/ourwines.html
<!DOCTYPE html>
<head>
    <meta HTTP-EQUIV="X-UA-COMPATIBLE" CONTENT="IE=EmulateIE9">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta property="og:image" content="http://www.brightpointinc.com/interactive/images/Budget_202px.png">

    <title>Raspberry5</title>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css">

    <script type="text/javascript" src="resources/js/d3.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
    
     <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/agency.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

</head>

 <header>
        <div class="container">
            <div class="intro-text">
                 <video width="100%" controls>
                     <source type="video/mp4" src="resources\img\video.mp4">
                     Your browser does not support HTML5 video.
                  </video>
            </div>
        </div>
    </header> 


<body id="page-top" class="index" onload="main()">
 >
<!--<body style="height:900px; width:1280px; overflow:auto" onload="main()">-->

 <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" style="background-color:black">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="http://localhost:8080/connoisseurSur">Lives of Pi</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#portfolio">Your pi summary</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Fitbit visuals</a>
                    </li>
                    
                      <li>
                        <a class="page-scroll" href="#team">Your pictures</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="http://localhost:8080/connoisseurSur#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
    
        <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    <script src="resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/agency.js"></script>
    


<!-- Services Section -->
    <section id="portfolio" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">Pi Synchub</h1>
                    <h3 class="section-subheading text-muted">Your personal sync assistant.</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Fitbit visualization</h4>
                    <p class="text-muted">Have a dinner planned? Let us help you find a match for tonight's menu. See the graph below for more details</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span><br>
                    <h4 class="service-heading">Sync pics</h4>
                    <p class="text-muted">So you think that you have found the one? Let us show you the world of choices Delicato has to offer.</p>
                    <br><br>
                    <h5 class = "text-muted"> current members </h5>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Media center</h4>
                    <p class="text-muted">Love you wines? Let us organize that dream wedding or that most awaited birthday, with a custom wine theme! Our wineyards offer the the most scenic locations for that special occasion. </p>
                	
                </div>
            </div>
            <br>

  <style>
    .bubbleChart {
      min-width: 100px;
      max-width: 700px;
      height: 500px;
      margin: 0 auto;
    }
    .bubbleChart svg{
      background: #FFFFFF;
    }
  </style>
</head>

<div class="bubbleChart"/>
           
        </div>
    </section>
    
    
     
    
   <!-- The main stuff about wine pairing --> 
    <section id="services" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">fitbit Visualization</h2>
                 	
                </div>
            </div>
            



<div id="container_fit" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	
            
 </div>
 </section> 
 
 <!-- Team Section -->
    <section id="team" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Your recent pictures</h2>
                    <h3 class="section-subheading text-muted">Chose your kind of wine.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb1.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb2.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb3.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                    </div>
                </div>
                
                  <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted"> </p>
                </div>
            </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb4.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                      </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb5.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb6.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                        
                    </div>
                </div>
                
                  <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted"> </p>
                </div>
            </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb7.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                        
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb8.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                        
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/Box Sync/Box Sync/bbb9.jpg" class="img-responsive img-circle" alt="">
                        <h4></h4>
                        <p class="text-muted"></p>
                        
                    </div>
                </div>
                
                  <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">  </p>
                </div>
            </div>
            </div>
 
        </div>
    </section>

 
 
 
  


</body>

 <script src="http://phuonghuynh.github.io/js/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/d3/d3.min.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/d3-transform/src/d3-transform.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/extarray.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/misc.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/micro-observer.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/microplugin/src/microplugin.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/bubble-chart.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/central-click/central-click.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/lines/lines.js"></script>
  <script src="test-bubble-chart.js"></script>
   <!--  <script> 
    $(function(){
      $("#Bestsellers").load("index.html"); 
    });
    </script>  
     -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>       
	<script src="highcharts1.js"></script>
     

=======
<!DOCTYPE html>
<head>
    <meta HTTP-EQUIV="X-UA-COMPATIBLE" CONTENT="IE=EmulateIE9">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta property="og:image" content="http://www.brightpointinc.com/interactive/images/Budget_202px.png">

    <title>Wine Pairing data visualization D3.js</title>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css">

    <script type="text/javascript" src="resources/js/d3.min.js"></script>
    <script type="text/javascript" src="resources/js/main.js"></script>
    
     <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/agency.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    

</head>


<body id="page-top" class="index" onload="main()">

<!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Wine Connoisseur</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Photo Gallery</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#events">Events</a>
                    </li>
                     <li>
                     <a class="page-scroll" href="#ourwines">Our Wines</a>
                    </li>
                    <li>
                     <a class="page-scroll" href="${pageContext.request.contextPath}/onlineshop">Online Shoppe</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#">Visualize</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
    <!-- Services Section -->
    <section id="ourwines" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">Wine and Dine</h1>
                    <h3 class="section-subheading text-muted">Add wine and make your meals magical.</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Food Pairings</h4>
                    <p class="text-muted">Have a dinner planned? Let us help you find a match for tonight's menu. See the graph below for more details</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span><br>
                    <h4 class="service-heading">Join our tasting rooms</h4>
                    <p class="text-muted">So you think that you have found the one? Let us show you the world of choices Delicato has to offer.</p>
                    <br><br>
                    <h5 class = "text-muted"> current members </h5>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Special Events</h4>
                    <p class="text-muted">Love you wines? Let us organize that dream wedding or that most awaited birthday, with a custom wine theme! Our wineyards offer the the most scenic locations for that special occasion. </p>
                </div>
            </div>
            <br>

  <style>
    .bubbleChart {
      min-width: 100px;
      max-width: 700px;
      height: 500px;
      margin: 0 auto;
    }
    .bubbleChart svg{
      background: #FFFFFF;
    }
  </style>
</head>

<div class="bubbleChart"/>
           
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Food Pairings</h2>
                 	
                </div>
            </div>
            
            <div class="bp-navBar" style="left:20px;">
    			<ul class="bp-navigation clearfix" style="list-style-type:none">
        		<li id="federalButton" class="button selected">Total</li>
        		<li id="stateButton" class="button">Reds</li>
        		<li id="localButton" class="button">Whites</li>
    			</ul>
			</div>

	
   <div id="body" style="position:relative; left: 20px; top: 80px;"></div>
 

    <div id="toolTip" class="tooltip" style="opacity:0;">
        <div id="head" class="header"></div>
        <div id="header1" class="header1"></div>
        <div id="header2" class="header2"></div>
        <div style="position:absolute; left:10px">
            <div id="federalTip" class="tip" style="width:135px; left:0px; top:10px; position: absolute;">
                <div class="header3"><br>Total</div>
                <div class="header-rule"></div>
                <div id="fedSpend" class="header4"></div>
            </div>
            <div id="stateTip" class="tip" style="width:125px; left:140px; top:10px; position: absolute;">
                <div class="header3"><br>Whites</div>
                <div class="header-rule"></div>
                <div id="stateSpend" class="header4"></div>
            </div>
            <div id="localTip" class="tip" style="width:125px; left:272px; top:10px; position: absolute;">
                <div class="header3"><br>Reds</div>
                <div class="header-rule"></div>
                <div id="localSpend" class="header4"></div>
            </div>
        </div>
        <div class="tooltipTail"></div>
    </div>
	</div>
            
 </div>
 
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Tasting Rooms</h2>
                    <h3 class="section-subheading text-muted">Chose your kind of wine.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/team/1.jpg" class="img-responsive img-circle" alt="">
                        <h4>The Red Club</h4>
                        <p class="text-muted">Light, Medium and Big reds</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/team/2.jpg" class="img-responsive img-circle" alt="">
                        <h4>The White Wagon</h4>
                        <p class="text-muted">Sparkling, Rich, Sweet and Light-dry whites</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="resources/img/team/3.jpg" class="img-responsive img-circle" alt="">
                        <h4>Dessert Wines</h4>
                        <p class="text-muted">Satisfying that sweet tooth</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">  Click on the room you fancy to subscribe to our latest wine tasting events.</p>
                </div>
            </div>
        </div>

 
 
 
  
 
     <!-- Section for dynamic graphs -->
    	
        <div class="container">
            <div class="row">
                 <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Best Sellers</h2>
                    <div id = "Bestsellers" style="float:right;" ></div>
                 </div>
            </div>
            
            
         </div>
     </section> 
 
   
     <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    <script src="resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/agency.js"></script>
	
	<script src="resources/js/about.js"></script>
    
    

</body>

 <script src="http://phuonghuynh.github.io/js/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/d3/d3.min.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/d3-transform/src/d3-transform.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/extarray.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/misc.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/micro-observer.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/microplugin/src/microplugin.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/bubble-chart.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/central-click/central-click.js"></script>
  <script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/lines/lines.js"></script>
  <script src="test-bubble-chart.js"></script>
    <script> 
    $(function(){
      $("#Bestsellers").load("index.html"); 
    });
    </script> 
    
     

>>>>>>> 283cea51eb889c9bacf905d3b56185fca29ec181:src/main/webapp/ourwines.jsp
</html>