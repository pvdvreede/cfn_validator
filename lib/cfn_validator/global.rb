require 'contracts'

module CfnValidator
  module Global
    include Contracts

    StringNumberOrNumber = Or[Num, -> (val) { !!(/^[0-9]+$/ =~ val) }]

    StringBoolOrBool = Or[Bool, -> (val) { !!(/^(true|false)$/i =~ val) }]

    ResourceNameType = -> (val) { !!(/^[A-Za-z0-9]+$/ =~ val) }
  end
end
