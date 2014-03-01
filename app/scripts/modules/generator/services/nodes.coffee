'use strict'

angular.module('creditsGenerator')
	.factory 'Nodes', () ->

		 class Nodes

			person: ->
				{
					_id: _.uniqueId()
					id: ""
					name: ""
					location: ""
					extras: {}
				}

