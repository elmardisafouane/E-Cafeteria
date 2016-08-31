<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Client</h1>


            <p class="lead">Informations du client:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <br>

        <div class="form-group">
            <label for="name">Nom</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control" />
        </div>


        <input type="hidden" name="_flowExecutionKey" />

        <input type="submit" value="Suivant" class="btn btn-info" name="_eventId_customerInfoCollected" />

        <button class="btn btn-danger" name="_eventId_cancel">Annuler</button>

<!--HIDDEN -->

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>

<!-- END HIDDEN -->


        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>