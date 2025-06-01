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

    it 'handles newlines as delimiters' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end

    it 'raises exception for single negative number' do
      expect { subject.add("1,-2") }.to raise_error("negative numbers not allowed: -2")
    end

    it 'raises exception for multiple negative numbers' do
      expect { subject.add("-1,-2,3") }.to raise_error("negative numbers not allowed: -1,-2")
    end
  end
end
