<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Inscription client</h1>

            <p class="lead">Veillez remplir le formulaire suivant:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" commandName="customer">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="username" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control" />
        </div>




        <div class="form-group">

            <form:hidden path="billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>








        <div class="form-group">

            <form:hidden path="shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">

            <form:hidden path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div>


        <input type="submit" value="Valider" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>