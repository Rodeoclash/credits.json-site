'use strict'

angular.module('creditsCore')
	.directive('siteHeader', (MODULES_PATH) ->
		templateUrl: "#{MODULES_PATH}/core/views/directives/site_header.html"
		restrict: 'E'
		link: (scope, element, attrs) ->

			
	)