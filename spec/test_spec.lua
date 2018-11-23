require 'busted.runner' ( )

describe ('test suite for modest', function ()
  randomize()

  it ('should point the module mode', function ( )
    local result = require 'fixture'

    assert.True  (result.module, 'expected to report module mode as true')
    assert.False (result.script, 'expected to report script mode as false')
  end)

  it ('should point the script mode', function ( )
    local modest = require 'modest'

    assert.False (modest.module ( ), 'expected to report module mode as false')
    assert.True  (modest.script ( ), 'expected to report script mode as true')
  end)
end)
