<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp"/>
<body>
<div class= "container" style = "margin-top: 60px;">
    </div>
    <div class = "col-xs-12 col-sm-12 col-md-10">
    <c:if test = "${not empty orderDetails}">
    <table class= "table table-bordered">
    <thead>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Unit Price</th>
        <th>Quantity</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var = "detail" items = "${orderDetails}">
    <tr>
         <td>${detail.product.productName}</td>
         <td>${detail.product.productDescription}</td>
         <td>${detail.product.unitPrice}$</td>
         <td>${detail.quality}</td>
    </tr>
         </c:forEach>
         </tbody>
         </table>
         </c:if>
         <c:if test = "${orderDetails.size() == 0}">
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