<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url();
        
    }
}
</style>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<body ng-app="app" ng-controller="ProductController" style="background-color:silver ;">
<div class="container">
  <div class="row">
      <div class="panel panel-default">
        <div class="panel-heading">
        <table align="center">
          <tr><centre><h4><i> <font color="red">PRODUCT DETAILS</font> </i></h4></table></centre></tr>
          <tr>
        </div>
        <table class="table table-fixed">
          <thead>
            <tr>
            </tr>
            </thead>
            </table>
            </div>
            </div>
            </div>
            

<table align="center">
<tr><center><h3><i>Product Details</i></h3></center></tr>
<tr>
<th>PRODUCT NAME: </th><td>  ${product.name }        </td> <br>
</tr>
<tr>
<th>PRICE       :</th><td>   ${product.price }      </td>   <br>
</tr>
<tr>
<th>MANUFACTURER: </th><td>  ${product.manufacturer }      </td>   <br>
</tr>
<tr>
<th>DESCRIPTION :</th><td>	${product.description }	</td>	<Br>
</tr>
<tr>
<url:url value="/all/product/productlist" var="url"></url:url>
<td align="center"><a href="${url }">Browse All Products</a></td>
</tr>
<tr>
<sec:authorize access="hasRole('ROLE_USER')">
<td align="center"><li id="csym"><button href="#" ng-click="addToCart(${product.id })">Add to cart</button></li></td>
</sec:authorize>
</tr>
</table>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script>

</html>
<%@include file="footer.jsp" %>