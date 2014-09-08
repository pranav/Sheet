sheetServices = angular.module('sheetServices', ['ngResource'])

sheetServices.factory('Sheet', ['$resource', ($resource) ->
    $resource("/api/v1/sheet/:id", {}, {
        all: {method: 'GET', params: {id: 'all'}, isArray: true}
    })
])