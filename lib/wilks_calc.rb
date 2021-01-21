require 'wilks_calc/calculator'

module WilksCalc
  def self.male(bodyweight, weight_lifted)
    Calculator.new('M', bodyweight, weight_lifted).calculate
  end

  def self.female(bodyweight, weight_lifted)
    Calculator.new('F', bodyweight, weight_lifted).calculate
  end
end