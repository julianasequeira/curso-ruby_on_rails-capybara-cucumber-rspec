require 'calculator'

describe Calculator, " usada para fazer operações" do
  # subject(:calc) { described_class.new() }

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5,7)
      expect(result).to eql (12)
    end
    
    it 'with negative numbers' do
      result = subject.sum(-5,-7)
      expect(result).to eql (-12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5,7)
      expect(result).to eql (2)
    end

  end

  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_error("divided by 0")
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3, 0)}.to raise_error(/divided/)    
    end
  end
end