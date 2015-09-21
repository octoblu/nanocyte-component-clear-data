ReturnValue = require 'nanocyte-component-return-value'
ClearData = require '../src/clear-data'

describe 'ClearData', ->
  beforeEach ->
    @sut = new ClearData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with anything', ->
      it 'should return an empty object', ->
        expect(@sut.onEnvelope('anything')).to.deep.equal {}

    describe 'when called with nothing', ->
      it 'should return an empty object', ->
        expect(@sut.onEnvelope(!'nothing'[1..-2]?)).to.deep.equal {}
