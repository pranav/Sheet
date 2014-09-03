dndSheetsApp = angular.module 'dndCharacterSheets', []

dndSheetsApp.controller 'CharSheet', ($scope, $http) ->
  $http.get("/js/data.json").success((data) ->
    $scope.char = data)
  $scope.abilityScoreUpdate = () ->
    console.log(@)
    console.log($scope.char.abilities)
    array = []
    for ability in $scope.char.abilities
      obj = {}
      obj.name = ability.name
      obj.score = ability.score
      obj.modifier = Math.floor((ability.score-10)/2)
      array.push(obj)
    $scope.char.abilities = array
    $scope.$apply()

