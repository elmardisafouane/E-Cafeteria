<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Gestion des produits</h1>

            <p class="lead">Gerer vos produits</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-warning">
                <th>Image</th>
                <th>Nom</th>
                <th>Categorie</th>
                <th>Prix</th>
                <th>CRUD</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productPrice} DH</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><i class="fa fa-info" aria-hidden="true" style="color: #3e8f3e; font-size: larger"></i></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><i class="fa fa-times" aria-hidden="true" style="color: #ac2925; font-size: larger"></i></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><i class="fa fa-pencil-square-o" aria-hidden="true" style="color: #23527c; font-size: larger"></i></a>
                    </td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/product/addProduct"/>" class="btn btn-default pull-right">Ajouter un produit</a>
        
<%@include file="/WEB-INF/views/template/footer.jsp"%>