sheetApp = angular.module 'sheetApp', ['ngRoute', 'sheetServices','sheetControllers']

sheetApp.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
    $routeProvider.when('/', {
        templateUrl: '/static/html/templates/index.html',
        controller: 'IndexCtrl'
    }).when('/sheet/:id', {
        templateUrl: '/static/html/templates/sheet.html',
        controller: 'SheetCtrl'
    }).otherwise({
        redirectTo: '/'
    })

    $locationProvider.html5Mode(true)
])

sheetControllers = angular.module('sheetControllers', [])

sheetControllers.controller('BaseCtrl', ['$scope', ($scope) ->
    $scope.test = 'test'
])

sheetControllers.controller('IndexCtrl', ['$scope', 'Sheet', ($scope, Sheet) ->
    Sheet.all (sheetIds) ->
        $scope.sheetIds = sheetIds
])

sheetControllers.controller('SheetCtrl', ['$scope', '$routeParams', 'Sheet', ($scope, $routeParams, Sheet) ->
    Sheet.get {id: $routeParams.id}, (sheet) ->
        $scope.sheet = sheet
])