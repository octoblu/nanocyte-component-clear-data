ReturnValue = require 'nanocyte-component-return-value'

class ClearData extends ReturnValue
  onEnvelope: (envelope) =>
    return {}

module.exports = ClearData
