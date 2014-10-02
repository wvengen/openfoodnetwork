Darkswarm.controller "HubsCtrl", ($scope, Hubs, Search, $document, $rootScope, HashNavigation, FilterSelectorsService, MapModal) ->
  $scope.Hubs = Hubs
  $scope.hubs = Hubs.visible
  $scope.totalActive =  FilterSelectorsService.totalActive
  $scope.clearAll =  FilterSelectorsService.clearAll
  $scope.filterText =  FilterSelectorsService.filterText
  $scope.FilterSelectorsService =  FilterSelectorsService
  $scope.query = Search.search()
  $scope.show_profiles = false
  $scope.openModal = MapModal.open

  $scope.$watch "query", (query)->
    Search.search query

  $rootScope.$on "$locationChangeSuccess", (newRoute, oldRoute) ->
    if HashNavigation.active "hubs"
      $document.scrollTo $("#hubs"), 100, 200
