'use strict'

angular.module('creditsCore', [
  'ngRoute'
  'creditsGenerator'
  'creditsSiteSubmission'
])

  .constant('MODULES_PATH', '/scripts/modules')

  .config ($routeProvider) ->
  	
    $routeProvider

      .otherwise
        redirectTo: '/generator' # provided by generator module