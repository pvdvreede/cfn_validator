require 'json'
require 'contracts'
require_relative './cfn_validator/global'
require_relative './cfn_validator/parameters'

module CfnValidator
  include Contracts
  include Parameters

  ParametersType = HashOf[ResourceNameType, ParameterType]
  MappingsType = {}
  ConditionalType = {}
  OutputsType = {}

  CloudFormationType = KeywordArgs[
    "AWSTemplateFormatVersion" => Optional[String],
    "Description"  => String,
    "Parameters" => Optional[ParametersType],
    "Mappings" => Optional[MappingsType],
    "Conditions" => Optional[ConditionalType],
    "Outputs" => Optional[OutputsType],
    "Resources" => {}
  ]

  def self.validate_from_json(json_string)
    validate(JSON.parse(json_string))
  end

  def self.validate(cfn_hash)
    Contract.valid?(cfn_hash, CloudFormationType)
  end
end
