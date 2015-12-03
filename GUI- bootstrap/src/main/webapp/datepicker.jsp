<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
  <head>
       <title>Wine Connoisseur</title>

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

	<link href="resources/css/bootstrap.css" rel="stylesheet">
	<link href="resources/css/bootstrap-datepicker.css" rel="stylesheet">    
    <link href='resources/css/bootstrap-datepaginator.css'  rel='stylesheet'/>
    
   
  </head>
  <body>
  
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
                <a class="navbar-brand page-scroll" href="${pageContext.request.contextPath}">Wine Connoisseur</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}#events">Events</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}/datepicker.jsp">Our Wines</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}#team">Team</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${pageContext.request.contextPath}#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
  	<div class="container">
      <br/> <br/> <br/> <br/> <br/> <br/>
      <h2>Select a date for your visit!</h2>
      
    </div>
    <section id="contact">
        <div class="container">
            <div id="paginator"></div> <br/> <br/>
            <div class="row">
                <div class="col-lg-12">
                    <form:form action="/bookatour" method="post" modelAttribute="user" name="tour">
                    <h4>${message}</h4>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" name="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" name="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" name="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" name="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Book tour</button>
                            </div>
                        </div>
                        <input type="hidden" name="date1" id="date1" value="">
                    </form:form>
                </div>
            </div>
        </div>
    </section>
    <script src="resources/js/jquery.js"></script>
  	<script src="resources/js/moment.js"></script>
  	<script src="resources/js/bootstrap-datepicker.min.js"></script>
  	<script src="resources/js/bootstrap-datepaginator.js"></script>
  	 <script type="text/javascript">
  		var options = {
  		  onSelectedDateChanged: function(event, date) {
  		    document.tour.date1.value = date;
  		  }
  		}
  		$(function() {
  			$('#paginator').datepaginator(options);
  		});
  	</script>
  	

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/agency.js"></script>
  </body>
</html>