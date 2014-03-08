'use strict'

angular.module('creditsGenerator', [
	'creditsCore'
	'ngAutocomplete'
])

	.constant('MODULES_PATH', '/scripts/modules')

	.config (MODULES_PATH, $routeProvider) ->

		$routeProvider
		  .when '/generator',
			templateUrl: "#{MODULES_PATH}/generator/views/pages/index.html"
			controller: 'GeneratorIndexCtrl'