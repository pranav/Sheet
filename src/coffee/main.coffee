dndSheetsApp = angular.module 'dndCharacterSheets', []

dndSheetsApp.controller 'CharSheet', ($scope, $http) ->
  $http.get("/static/data.json").success((data) -> $scope.char = data)

  $scope.abilityScoreUpdate = () ->
    $scope.char.abilities = $scope.char.abilities.map (ability) ->
      name: ability.name
      score: ability.score
      modifier: Math.floor((ability.score - 10) / 2)
