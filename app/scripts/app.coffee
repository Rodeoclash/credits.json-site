'use strict'

angular.module('creditsjsonSiteApp', [
  'ngRoute'
  'creditsGenerator'
])

  .constant('MODULES_PATH', '/scripts/modules')

  .config ($routeProvider) ->
  	
    $routeProvider

      .otherwise
        redirectTo: '/generator' # provided by generator module