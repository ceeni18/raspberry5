<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<html>
  <head>
  <meta charset="utf-8">
 <!--    <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>  
 	
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
 <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>  
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

    <!-- Bootstrap Core CSS -->
     <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> 
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/freelancer.css" />"rel="stylesheet">
    <link href="<c:url value="/resources/css/agent.css" />"rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>"rel="stylesheet"type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<script src="<c:url value="/resources/js/formvalidation.js" />"></script>
 <script>
    function initialize()
    {
    var x = document.getElementById("form").elements.length;
    for(var i =0; i<x-1;i++)
    {
         var field = document.getElementById("form").elements[i].value ;
         if(field == "")
         {
         alert("values missing");
         return false;
         }
    }
         
    if (document.getElementById("cardNumber"))
    {
    	if(document.getElementById("cardNumber").value.length<16 || document.getElementById("cardNumber").value.length>16)
    	{
    alert("Card Number must be  16 characters long");
    return false;
    	}
   	 
    
    }
    if (document.getElementById("cvc"))
    {
    	if(document.getElementById("cvc").value.length<3 || document.getElementById("cvc").value.length>3 )
    	{
    alert("cvc must be 3 characters long");
    return false;
    	}
    	
    	var re = /^\d{2}\/\d{4}$/;

        if(form.startdate.value != '' && !form.startdate.value.match(re)) {
          alert("Invalid date format: " + form.startdate.value);
          form.startdate.focus();
          return false;
        }
    
    }
    }  
          
         
    </script>

</head>

<body id="page-top" class="index" >

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
  
<hr>

  <section id="contact">
        <div class="container">
            <div class="row">
          
                <div class="col-lg-12 text-center">
               
                    <h4>Please fill the bank details to complete the payment process</h4>
                    <hr class="star-primary">
                </div>
            </div>

   
          <script src='/routes/toPay.js' type='text/javascript'></script>
          <div class="row">
                <div class="col-lg-8 col-lg-offset-2" >
         <form action="${pageContext.request.contextPath}/paid" novalidate="novalidate" name="form" id="form" onsubmit="return initialize()">
           <!--  <div class='form-row'> -->
              <div class='col-xs-12 form-group required'>
                <label class='control-label'>Name on Card</label>
                <input class='form-control' size='4' type='text'>
              <!-- </div> -->
            </div>
            <div class='form-row'>
              <div class='col-xs-12 form-group card required'>
                <label class='control-label'>Card Number</label>
                <input autocomplete='off' class='form-control card-number' size='20' type='text'>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-xs-12 form-group cvc required'>
                <label class='control-label'>CVC</label>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
              </div>
              <div class='col-xs-12 form-group expiration required'>
                <label class='control-label'>Expiration</label>
                <input class='form-control card-expiry-year' placeholder='MM/YYYY' size='8' type='text'>
              </div>
    <br>
            <div class='form-row'>
              <div class='col-md-12 form-group'>
                <button class='form-control btn btn-primary submit-button' type='submit'>Pay</button>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12 error form-group hide'>
                <div class='alert-danger alert'>
                  Please correct the errors and try again.
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class='col-md-4'></div>
    </div>
</div>
</div>
</div>
</div>
</section>
	
  </body>
</html>
