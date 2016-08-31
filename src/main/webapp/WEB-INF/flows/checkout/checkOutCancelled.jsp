<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Checkout annule!</h1>

                    <p>Votre checkout est annule, vous pouvez continuer votre shopping</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/product/productList" />" class="btn btn-info">Products</a></p>
        </section>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>