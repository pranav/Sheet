sheetServices = angular.module('sheetServices', ['ngResource'])

sheetServices.factory('Sheet', ['$resource', ($resource) ->
    $resource("/api/v1/sheet/:id")
])