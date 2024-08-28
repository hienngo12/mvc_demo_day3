<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp"/>
<body>
   <div class="container" style="margin-top: 60px;">
             <h2>Please fill information</h2>
             <form action="Orders" method="post" modelAttribute="orders">
                 <div class="mb-3">
                     <label for="customerName" class="form-label">Customer Name (*)</label>
                     <input type="text" class="form-control" id="customerName" name="customerName" required placeholder="Customer Name">
                 </div>
                 <div class="mb-3">
                     <label for="customerAddress" class="form-label">Customer Address (*)</label>
                     <input type="text" class="form-control" id="customerAddress" name="customerAddress" required placeholder="Customer Address">
                 </div>
                 <button type="submit" class="btn btn-primary">Continue</button>
             </mvc:form>
         </div>
</body>
</html>