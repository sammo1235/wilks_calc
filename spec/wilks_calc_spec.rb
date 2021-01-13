require './lib/wilks_calc.rb'

RSpec.describe WilksCalc do
  describe '#male' do
    it 'calculates Wilks score for males' do
      expect(WilksCalc.male(90, 650)).to eq(414.96)
      expect(WilksCalc.male(125, 720)).to eq(410.29)
      expect(WilksCalc.male(70.5, 415.5)).to eq(309.69)
    end
  end

  describe '#female' do
    it 'calculates Wilks score for males' do
      expect(WilksCalc.female(70, 415)).to eq(412.86)
      expect(WilksCalc.female(55, 500)).to eq(596.67)
      expect(WilksCalc.female(82.5, 312)).to eq(280.79)
    end
  end
end