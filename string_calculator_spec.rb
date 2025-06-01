require './string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns number itself for one number' do
      expect(subject.add("1")).to eq(1)
    end

    it 'returns sum for two numbers' do
      expect(subject.add("1,2")).to eq(3)
    end

    it 'returns sum for multiple numbers' do
      expect(subject.add("1,2,3,4")).to eq(10)
    end
  end
end
