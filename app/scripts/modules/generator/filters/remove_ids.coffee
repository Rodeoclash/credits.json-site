'use strict'

angular.module('creditsGenerator')
	.filter 'removeIds', () ->
		(input) ->

			# deep copy to avoid removing ids on our working version
			output = angular.copy(input)

			# remove tracking ids
			(delete_ids = (obj) ->
				_.each(obj, (value, key) ->
					delete obj[key] if key = "_id"
					_.each(value, delete_ids) if _.isArray(value)
				)
			)(output)

			output