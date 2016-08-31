/**
 * Created by Aokiji on 5/26/2016.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope,$http) {

    $scope.refreshCart = function () {
        $http.get('/eCafeteriaStore/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/eCafeteriaStore/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
          $http.put('/eCafeteriaStore/rest/cart/add/'+productId).success(function () {
              alert("Le produit a été ajouté au panier")
          });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eCafeteriaStore/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal = 0;

        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };

});