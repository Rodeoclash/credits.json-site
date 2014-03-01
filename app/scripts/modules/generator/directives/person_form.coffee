'use strict'

angular.module('creditsGenerator')
	.directive('generatorPersonForm', (MODULES_PATH) ->
		templateUrl: "#{MODULES_PATH}/generator/views/directives/person_form.html"
		restrict: 'E'
		scope: {
			model: "="
		}
		link: (scope, element, attrs) ->
			
			scope.$watch('email', (v) ->
				return unless v?
				scope.model.id = CryptoJS.MD5(v).toString()
			)

	)