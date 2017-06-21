<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
 body {
        background-color: #444;
        background: url();
        
    }
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body  ng-app="product" ng-controller="ProController" ng-init="getObj()">
<%@ include file="header.jsp" %>
<div class="container">
<div id="slider">
 <ul class="slides">
        <c:forEach var="p" items="${newarrivals}" >
          <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
          <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <li class="slide"><a href="${url }"><img src="${sr }"/><span id="product_name">${p.name }</span></a>
           <br/><span id="new">NEW</span><span id="pro_price">INR ${p.price }</span>
           </li>
           
         </c:forEach>
  </ul>
  </div>

<table  >
<tr>
<th >Product Name</th><th>Price</th><th>Action</th>
</tr>

<c:forEach items="${products}" var="p" >
<tr>
<c:url value="/resources/images/${p.id }.jpg" var="url"></c:url>
<td><img src="${url }" height="50" width="50" ></td>
<td >${p.name}</td><td>${p.price }</td>
<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a></td>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/editproduct/${p.id }" var="url2"></url:url>
<td><a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/deleteproduct/${p.id }" var="url1"></url:url>
<td><a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
</sec:authorize>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
<%@ include file="footer.jsp" %>

<c:url var="script7" value="/resources/js/productcontroller.js"></c:url>
<script src="${script7}"></script> 
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
<c:url var="script9" value="/resources/js/headercontroller.js"></c:url>
  <script src="${script9}"></script>
</html>