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

${message}
    <div class="row">
    <hr>
        <div class = "container_product">
        <div class="col-md-9 well">
		<ul class="thumbnails">
		
		<c:if  test="${!empty results}">
		<c:forEach items="${results}" var="prod">
		<table>
		<tr>
		<td>
              <li><a href = "#">
             
                <img src="${prod.imageName }" align = "center" height="400" width="500" alt="ALT NAME" >      
                <div class="caption" style="padding-bottom:40px;">
                <h3>${prod.productName}</h3>
                </div>
               </a>
               </li>
               </td>
               <td style="padding-left:40px;">
                <h6>${prod.productName}</h6>
               <h4>Type:</h4>
               <h5>${prod.productType}</h5>
               <h4>Brand:</h4>
               <h5>${prod.brand}</h5>
               <h4>Year:</h4>
               <h5>${prod.year}</h5>
               <h4>Price:</h4>
               <h5>$ ${prod.price}</h5>
               
               <div class="btn-group cart">
													<a
														href="${pageContext.request.contextPath}/addtocart/${prod.productId}">
														<button type="button" class="btn btn-success">
															<b>Add to cart</b>
														</button>
													</a>
												</div>
               </td>
               
               </tr>
             </table>  
            </c:forEach>
            </c:if>
          </ul>
</div>
</div>
        </div>
    </div>
    
    
    </section>
	
  </body>
</html>
