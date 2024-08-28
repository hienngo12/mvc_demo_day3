<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page contentType = "text/html;charset = UTF-8" language = "java" %>
<html>
<jsp:include page="header.jsp"/>
<body>
    <div class="container">
        <c:if test="${empty cartList}">
            <p>Your cart is empty.</p>
        </c:if>

        <c:if test="${not empty cartList}">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">ProductName</th>
                        <th scope="col">ProductDescription</th>
                        <th scope="col">UnitPrice</th>
                        <th scope="col">Quantity</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${cartList}">
                        <tr>
                            <th scope="row">${item.product.id}</th>
                            <td>${item.product.productName}</td>
                            <td>${item.product.productDescription}</td>
                            <td>${item.product.unitPrice}</td>
                            <td>${item.quantity}</td>
                            <td>
                                <button class="btn btn-danger" onclick="location.href='/removeItem/${item.product.id}'">remove from cart</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <button class="btn btn-primary" onclick="location.href='/checkOut'">check out</button>
        </c:if>
    </div>
</body>
</html>