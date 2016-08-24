require 'rspec'
require_relative '../../lib/cfn_validator/parameters'

describe 'Parameter validations' do
  describe 'Parameter types' do
    it 'only allows the static values' do
      expect(Contract.valid?('nonType', CfnValidator::Parameters::ParameterTypeType)).to eq false
      expect(Contract.valid?('String', CfnValidator::Parameters::ParameterTypeType)).to eq true
    end
  end

  describe 'Parameter hashes' do
    it 'requires the Type key only' do
      expect(Contract.valid?({ "Type1" => "String" }, CfnValidator::Parameters::ParameterType)).to eq false
      expect(Contract.valid?({ "Type" => "String" }, CfnValidator::Parameters::ParameterType)).to eq true
    end

    it 'allows optional keys' do
      expect(Contract.valid?({ "Type" => "String", "NoEcho" => false }, CfnValidator::Parameters::ParameterType)).to eq true
    end
  end
end
