'use strict'

describe 'Directive: personForm', () ->

  # load the directive's module
  beforeEach module 'creditsjsonSiteApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<person-form></person-form>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the personForm directive'
