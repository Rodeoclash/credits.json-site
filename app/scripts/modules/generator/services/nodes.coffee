'use strict'

angular.module('creditsGenerator')
	.factory 'Nodes', () ->

		 class Nodes

			person: ->
				{
					id: "",
					name: "",
					location: "",
				}