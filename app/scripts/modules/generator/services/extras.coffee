'use strict'

angular.module('creditsGenerator')
	.factory 'Extras', () ->

		 class Extras

			personAvailable: ->
				[
					{
						id: "homepage"
						name: "Homepage"
						description: "Your current personal homepage."
						placeholder: "http://www.example.com"
					}
					{
						id: "twitter_handle"
						name: "Twitter handle"
						description: "Your twitter handle, prefixed with the '@'"
						placeholder: "@handle"
					}
				]

			organisationAvailable: ->
				[
					{
						id: "twitter_handle"
						name: "Twitter handle"
						description: "The organisations twitter handle, prefixed with the '@'"
						placeholder: "@handle"
					}
				]

