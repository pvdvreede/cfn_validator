require 'rspec'
require_relative '../lib/cfn_validator.rb'

FIXTURES_PATH = File.expand_path("../fixtures/", __FILE__)

describe 'Validating a JSON file' do
  let(:invalid_cfn) do
    {
      "NotValid" => "Key"
    }
  end

  Dir.glob(FIXTURES_PATH + "/*").each do |f|
    it "returns true for a valid cloudformation #{f}" do
      expect(CfnValidator.validate_from_json(f)).to eq true
    end
  end

  it 'returns false for a invalid cloudformation file' do
    expect(CfnValidator.validate(invalid_cfn)).to eq false
  end
end
