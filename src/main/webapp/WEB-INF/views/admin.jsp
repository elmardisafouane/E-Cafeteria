
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin Dashboard</h1>

        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome ${pageContext.request.userPrincipal.name} |
            <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
        </h2>

        </c:if>

        <br><br><br>


        <div class="btn-group btn-group-justified">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-primary">Gestion des produits</a>
            <a href="<c:url value="/admin/customer" />" class="btn btn-primary">Gestion des clients</a>
            <a href="<c:url value="/" />" class="btn btn-primary">Acceuil</a>
        </div>




<%@include file="/WEB-INF/views/template/footer.jsp"%>