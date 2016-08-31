<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<jsp:useBean id="now" class="java.util.Date" />

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Commande</h1>

            <p class="lead">Confirmation de la commande</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="txt-center">
                            <h1>Recu</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>E-Cafeteria</strong><br/>
                                        Institut National des Postes et Telecommunications
                                    <br/>
                                        Madinat Al Irfane
                                    <br/>
                                        Rabat - Maroc
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Date: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        </div>

                        <br><br><br><br><br><br><br>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <td>Produit</td>
                                    <td>Quantite</td>
                                    <td class="text-center">Prix unitaire</td>
                                    <td class="text-center">Prix</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong> ${order.cart.grandTotal} DH</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>


                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-warning" name="_eventId_backToCollectShippingDetail">Retour</button>

                        <input type="submit" value="Commander" class="btn btn-info" name="_eventId_orderConfirmed" />

                        <button class="btn btn-danger" name="_eventId_cancel">Annuler</button>
                    </div>
                </form:form>
            </div>
        </div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>