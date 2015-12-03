<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/agency.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

   

</head>

<body id="page-top" class="index">

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
                     <a class="page-scroll" href="ourwines.jsp">Our Wines</a>
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
                        <a class="page-scroll" href="${pageContext.request.contextPath}/login">Visualize</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>


   

     <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row" id="main">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Registration</h2>
                    <h3 class="">Please enter the following details</h3>

                <form id="regForm" class="" method="post" action="/registration">
                
                <div class="row name">
                    <input type="text" id="name" name="name" placeholder="Name" />
                </div>
                
                <div class="row email">
                    <input type="text" id="email" name="email" placeholder="Email" />
                </div>
                
                <div class="row pass">
                    <input type="password" id="password1" name="password1" placeholder="Password" />
                </div>
                
                <div class="row pass">
                    <input type="password" id="password2" name="password2" placeholder="Password (repeat)" disabled="true" />
                </div>
                
                <!-- The rotating arrow -->
                <div class="arrowCap"></div>
                <div class="arrow"></div>
                
                <p class="meterText">Password Meter</p>
                
                <input type="submit" value="Register" />
                
            </form>
                </div>
            </div>
            
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2014</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>



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

    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
        <script src="resources/js/jquery.complexify.js"></script>
        <script src="resources/js/script.js"></script>

</body>

</html>
