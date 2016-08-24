require 'json'
require 'contracts'
include Contracts

module CfnValidator
  ParametersType = {}
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

  def self.validate_from_json(path)
    validate(JSON.parse(File.read(path)))
  end

  def self.validate(cfn_hash)
    Contract.valid?(cfn_hash, CloudFormationType)
  end
end
