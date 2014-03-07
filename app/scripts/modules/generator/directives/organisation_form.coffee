'use strict'

angular.module('creditsGenerator')
	.directive('generatorOrganisationForm', (MODULES_PATH, Extras, Nodes) ->
		templateUrl: "#{MODULES_PATH}/generator/views/directives/organisation_form.html"
		restrict: 'E'
		scope: {
			model: "="
		}
		link: (scope, element, attrs) ->

			scope.toggles = {}

			scope.$watch('model.homepage', (v) ->
				if v?
					scope.model.id = CryptoJS.MD5(v).toString()
				else
					scope.model.id = ""
			)

			scope.extras = Extras.organisationAvailable()

			removeItemFromCollectionById = (collection, id) ->
				return _.reject(collection, {_id: id});

			scope.addPerson = () ->
				scope.model.people.push(Nodes.person());

			scope.removePerson = (node) ->
				scope.model.people = removeItemFromCollectionById(scope.model.people, node._id);
	)