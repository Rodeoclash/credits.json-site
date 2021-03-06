'use strict'

angular.module('creditsGenerator')
	.directive('generatorPersonForm', (MODULES_PATH, Extras) ->
		templateUrl: "#{MODULES_PATH}/generator/views/directives/person_form.html"
		restrict: 'E'
		scope: {
			model: "="
		}
		link: (scope, element, attrs) ->

			scope.toggles = {}
			
			scope.$watch('email', (v) ->
				if v?
					scope.model.id = CryptoJS.MD5(v).toString()
				else
					scope.model.id = ""
			)

			scope.extras = Extras.personAvailable()
	)