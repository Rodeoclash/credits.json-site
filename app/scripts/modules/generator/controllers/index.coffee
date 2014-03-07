'use strict'

angular.module('creditsGenerator')
  .controller 'GeneratorIndexCtrl', ($scope, Nodes) ->

    $scope.data = {
      version: "0.1"
      created_at: new Date().toISOString()
      people: []
      organisations: []
    };

    removeItemFromCollectionById = (collection, id) ->
      return _.reject(collection, {_id: id});

    $scope.addPerson = () ->
      $scope.data.people.push(Nodes.person());

    $scope.removePerson = (node) ->
      $scope.data.people = removeItemFromCollectionById($scope.data.people, node._id);

    $scope.addOrganisation = () ->
      $scope.data.organisations.push(Nodes.organisation());

    $scope.removeOrganisation = (node) ->
      $scope.data.organisations = removeItemFromCollectionById($scope.data.organisations, node._id);