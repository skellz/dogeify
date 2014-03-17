require 'spec_helper'

describe Dogeify do 
  subject { Dogeify.new }

  describe '#process' do 
    let(:input) { 'My grandmom gave me a sweater for Christmas.' }
    let(:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect(output.downcase).to eql output
    end

    it 'combines nouns wit doge adjectives' do
      expect(output).to match /so grandmom\./i
      expect(output).to match /such sweater\./i
      expect(output).to match /very christmas\./i
    end

    it 'should apend wow' do
      expect(output).to end_with 'wow.'
    end
  end
end