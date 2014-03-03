'use strict'

angular.module('creditsGenerator')
	.factory 'Extras', () ->

		 class Extras

			available: ->
				[
					{
						id: "homepage"
						name: "Homepage"
						description: "Your current personal homepage."
						placeholder: "http://www.example.com"
					}
				]

