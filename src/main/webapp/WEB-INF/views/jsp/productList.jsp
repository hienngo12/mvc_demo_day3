<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page contentType = "text/html;charset = UTF-8" language = "java" %>
<html>
<jsp:include page= "header.jsp"/>
<body>
<div class= "container" style = "margin-top: 60px;">
    </div>
    <div class = "col-xs-12 col-sm-12 col-md-10">
    <c:if test = "${not empty products}">
    <table class= "table table-bordered">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Unit Price</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var = "product" items = "${products}" varStatus = "index">

    <tr>
                <td>${product.id}</td>
                 <td>${product.productName}</td>
                 <td>${product.productDescription}</td>
                 <td>${product.unitPrice}$</td>
         <td>
        <button class="btn btn-sm btn-primary" onclick="location.href='/addToCart/${product.id}'">Add to cart</button>
         </td>
    </tr>
         </c:forEach>
         </tbody>
         </table>
         </c:if>
         <c:if test = "${products.size() == 0}">
         <br>
         <div class = "alert alert-warning">
         There is no data
         </div>
         </c:if>
         </div>
         </div>
         </div>
         </body>
         </html>
