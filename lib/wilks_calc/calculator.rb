class Calculator
  attr_reader :sex, :bw, :wl

  COEFFICIENTS = {
    'A': { 'M': -216.0475144, 'F': 594.31747775582 },
    'B': { 'M': 16.2606339, 'F': -27.23842536447 },
    'C': { 'M': -0.002388645, 'F': 0.82112226871 },
    'D': { 'M': -0.00113732, 'F': -0.00930733913 },
    'E': { 'M': ("%.11f" % "7.01863e-06").to_f, 'F': ("%.15f" % "4.731582e-05").to_f },
    'F': { 'M': ("%.13f" % "-1.291e-08").to_f, 'F': ("%.15f" % "-9.054E-08").to_f }
  }

  def initialize(sex, bodyweight, weight_lifted)
    @sex = sex
    @bw = bodyweight.to_f
    @wl = weight_lifted.to_f
  end

  def calculate
    (wl * 500 / coeff_calculator).round(2)
  end

  def coeff_calculator()
    ('A'..'F').to_a.each_with_index.reduce(0) do |memo, (coeff, index)|
      memo += power(coeff, index)
    end
  end

  def power(coeff, p)
    COEFFICIENTS[coeff.to_sym][sex.to_sym] * bw ** p
  end
end
