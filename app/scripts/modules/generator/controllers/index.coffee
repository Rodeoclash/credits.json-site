'use strict'

angular.module('creditsGenerator')
  .controller 'GeneratorIndexCtrl', ($scope, Nodes) ->

  	$scope.data = {
      version: "0.1"
  		people: []
  		organisations: []
  	}

  	$scope.add_person = () ->
  		$scope.data.people.push(Nodes.person())

  	$scope.remove_person = (person) ->
  		console.log(person)
  		$scope.data.people = _.reject($scope.data.people, {_id: person._id})