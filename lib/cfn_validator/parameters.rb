require 'contracts'
require_relative './global'

module CfnValidator
  module Parameters
    include Contracts
    include Global

    ParameterTypeType = Enum[
      "String",
      "Number",
      "CommaDelimitedList",
      "AWS::EC2::AvailabilityZone::Name",
      "AWS::EC2::Image::Id",
      "AWS::EC2::Instance::Id",
      "AWS::EC2::KeyPair::KeyName",
      "AWS::EC2::SecurityGroup::GroupName",
      "AWS::EC2::SecurityGroup::Id",
      "AWS::EC2::Subnet::Id",
      "AWS::EC2::Volume::Id",
      "AWS::EC2::VPC::Id",
      "AWS::Route53::HostedZone::Id",
      "List<String>",
      "List<Number>",
      "List<AWS::EC2::AvailabilityZone::Name>",
      "List<AWS::EC2::Image::Id>",
      "List<AWS::EC2::Instance::Id>",
      "List<AWS::EC2::SecurityGroup::GroupName>",
      "List<AWS::EC2::SecurityGroup::Id>",
      "List<AWS::EC2::Subnet::Id>",
      "List<AWS::EC2::Volume::Id>",
      "List<AWS::EC2::VPC::Id>",
      "List<AWS::Route53::HostedZone::Id>"
    ]

    ParameterType = KeywordArgs[
      "Type" => ParameterTypeType,
      "Description" => Optional[String],
      "Default" => Optional[Any],
      "MaxLength" => Optional[StringNumberOrNumber],
      "MinLength" => Optional[StringNumberOrNumber],
      "NoEcho" => Optional[StringBoolOrBool],
      "MaxValue" => Optional[StringNumberOrNumber],
      "MinValue" => Optional[StringNumberOrNumber],
      "ConstraintDescription" => Optional[String],
      "AllowedPattern" => Optional[String],
      "AllowedValues" => Optional[ArrayOf[String]]
    ]
  end
end
