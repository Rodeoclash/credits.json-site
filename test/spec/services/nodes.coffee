'use strict'

describe 'Service: Nodes', () ->

  # load the service's module
  beforeEach module 'creditsjsonSiteApp'

  # instantiate service
  Nodes = {}
  beforeEach inject (_Nodes_) ->
    Nodes = _Nodes_

  it 'should do something', () ->
    expect(!!Nodes).toBe true
