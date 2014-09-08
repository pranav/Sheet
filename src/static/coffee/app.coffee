sheetApp = angular.module 'sheetApp', ['ngRoute', 'sheetControllers']

sheetApp.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
    $routeProvider.when('/', {
        templateUrl: '/static/html/templates/index.html',
        controller: 'IndexCtrl'
    }).otherwise({
        redirectTo: '/'
    })

    $locationProvider.html5Mode(true)
])

sheetControllers = angular.module('sheetControllers', [])

sheetControllers.controller('BaseCtrl', ['$scope', ($scope) ->
    $scope.test = 'test'
])

sheetControllers.controller('IndexCtrl', ['$scope', ($scope) ->
    $scope.index_test = 'test2'
])