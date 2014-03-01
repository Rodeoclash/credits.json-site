'use strict'

angular.module('creditsGenerator')
  .controller 'GeneratorIndexCtrl', ($scope, Nodes) ->

  	$scope.data = {
  		people: []
  		organisations: []
  	}

  	$scope.add_person = () ->
  		$scope.data.people.push(Nodes.person())