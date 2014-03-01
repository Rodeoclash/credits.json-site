'use strict'

angular.module('creditsGenerator', [
	'creditsjsonSiteApp'
	'ngRoute'
])

	.constant('MODULES_PATH', '/scripts/modules')

	.config (MODULES_PATH, $routeProvider) ->

	    $routeProvider
	      .when '/generator',
	        templateUrl: "#{MODULES_PATH}/generator/views/pages/index.html"
	        controller: 'GeneratorIndexCtrl'