require 'rspec'
require_relative '../../lib/cfn_validator/global'

describe 'Global types' do
  describe 'Resource names' do
    it 'only allows alpha numeric chars' do
      expect(Contract.valid?('sdf_sdf', CfnValidator::Global::ResourceNameType)).to eq false
      expect(Contract.valid?('sdf-sdf', CfnValidator::Global::ResourceNameType)).to eq false
      expect(Contract.valid?('MyResource01', CfnValidator::Global::ResourceNameType)).to eq true
    end
  end
end
