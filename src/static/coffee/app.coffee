sheetApp = angular.module 'sheetApp', ['ngRoute', 'sheetControllers']

sheetApp.config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/', {
        templateUrl: '/static/html/templates/index.html',
        controller: 'IndexCtrl'
    }).otherwise({
        redirectTo: '/'
    })
])

sheetControllers = angular.module('sheetControllers', [])

sheetControllers.controller('BaseCtrl', ['$scope', ($scope) ->
    $scope.test = 'test'
])

sheetControllers.controller('IndexCtrl', ['$scope', ($scope) ->
    $scope.index_test = 'test2'
])