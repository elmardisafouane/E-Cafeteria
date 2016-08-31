<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Continuer</h1>


            <p class="lead"></p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Etes-vous sur de vouloir continuer votre check-out ?</h3>
        <br>

        <button class="btn btn-warning" name="_eventId_backToCollectCustomerInfo">Retour</button>

        <input type="submit" value="Suivant" class="btn btn-info" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-danger" name="_eventId_cancel">Annuler</button>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>


        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>