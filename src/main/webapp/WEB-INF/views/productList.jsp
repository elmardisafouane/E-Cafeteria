<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Liste des produits</h1>

            <p class="lead">Tous les produits disponibles</p>
        </div>


        <table class="table table-striped table-hover">
            <thead class="bg-warning">
            <tr>
                <th>Image</th>
                <th>Nom</th>
                <th>Categorie</th>
                <th>Prix</th>
                <th>Details</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productPrice} DH</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><i class="fa fa-info" aria-hidden="true" style="color: #3e8f3e; font-size: larger"></i></a></td>
                </tr>
            </c:forEach>
        </table>
<%@include file="/WEB-INF/views/template/footer.jsp"%>