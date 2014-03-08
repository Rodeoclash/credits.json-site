'use strict'

angular.module('creditsSiteSubmission', [
	'creditsCore'
])

	.constant('MODULES_PATH', '/scripts/modules')

	.config (MODULES_PATH, $routeProvider) ->

		$routeProvider
			.when '/submit_site',
				templateUrl: "#{MODULES_PATH}/site_submission/views/pages/index.html"
				controller: 'SiteSubmissionIndexCtrl'