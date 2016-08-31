<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Informations du produit</h1>

            <p class="lead">Voir les details des produits </p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-lg-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width: 100%" />
                </div>

                <div class="col-lg-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Categorie</strong> : ${product.productCategory}</p>
                    <p><strong>quantite en stock</strong> : ${product.unitInStock}</p>
                    <p><strong>Disponibilte</strong> : ${product.productStatus}</p>
                    <p>${product.productPrice} DH</p>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}" >
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" /> " class="btn btn-default">Revenir</a>
                        <a href="#" class="btn btn-info btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span> Commander</a>
                        <a href="<c:url value="/customer/cart" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"\t></span> Panier </a>
                    </p>
                </div>
            </div>
        </div>

        <script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>