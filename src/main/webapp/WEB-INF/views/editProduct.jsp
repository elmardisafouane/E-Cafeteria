<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Modification du produit</h1>

            <p class="lead">Veillez operer vos modification</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">

        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Nom</label> <form:errors path="productName" cssStyle="color: red;" />
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

        <br>

        <div class="form-group">
            <label for="category">Categorie</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="jus" />Jus</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="sandwish" />Sandwish</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="pizza" />Pizza</label>
        </div>

        <br>


        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>

        <br>


        <div class="form-group">
            <label for="price">Prix</label> <form:errors path="productPrice" cssStyle="color: red;" />
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
        </div>

        <br>



        <div class="form-group">
            <label for="status">Disponibilite</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label
        </div>

        <br> <br>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label> <form:errors path="unitInStock" cssStyle="color: red;" />
            <form:input path="UnitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <br>

        <div class="form-group">
            <label class="control-label" for="productImage">Choisir une image</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br>

        <br>
        <input type="submit" value="Valider" class="btn btn-default ">
        <a href="<c:url value="/admin/productInventory" /> " class="btn btn-default">Annuler</a>
        </form:form>
        <br><br>


<%@include file="/WEB-INF/views/template/footer.jsp"%>