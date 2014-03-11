'use strict'

angular.module('creditsCore', [
	'ngRoute'
	'creditsGenerator'
	'creditsSiteSubmission'
])

	.constant('MODULES_PATH', 'scripts/modules')

	.config ($routeProvider, MODULES_PATH) ->
		
		$routeProvider

			.when '/',
				templateUrl: "#{MODULES_PATH}/core/views/pages/index.html"
				controller: 'CoreIndexCtrl'

			.otherwise
				redirectTo: '/' # provided by generator module