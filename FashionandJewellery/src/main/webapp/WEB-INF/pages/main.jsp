<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
 body {
        background-color: #444;
        background: url(https://previews.123rf.com/images/tonobalaguer/tonobalaguer1109/tonobalaguer110900243/10489758-beach-sand-perfect-plain-texture-background-pattern-Stock-Photo.jpg);
        
    }
}
</style>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Sports Store</title>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
				
            <a class="brand" href="#">
            <img src="pic/0.png" width="150" height="50">
            <a href="main.jsp" style="color: silver;"><b>Sports Store</b></a>
            </a>
            	
					
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="pages/login.jsp">Sign-in<span class="sr-only">go to login page</span></a></li>
					<li><a href="pages/registration.jsp">Sign-up<span class="sr-only">go to registration page</span></a></li>
				</ul>
			</div>
		</nav>
		<div class="container-fluid">
    		<img class="first-slide home-image" src="pic/7.jpg" width="1320" height="550">
    		<div class="carousel-caption">   
    			<h3><p><mark>Sports Store</mark></p></h3>    			
           		
           	</div>
        	
       	</div> 
       	<div>
       		<br><%@ include file="footer.jsp" %>
       	</div>
       			
	</body>
</html>