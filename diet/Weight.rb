# coding: utf-8
require "./Util.rb"
require "./person.rb"
include ValueCheck




module Weight
  def calc_bmi(weight, height)
    (weight * 1.0) / (height / 100.0)**2
  end



  def calc_ideal_weight(height, bmi)
    bmi * (height / 100.0)**2
  end


  def calc_standard_bmi(height)
    calc_ideal_weight(height, (25 + 18.5) / 2)
  end

end
