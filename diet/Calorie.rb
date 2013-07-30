# coding: utf-8
require "./Util.rb"
require "./person.rb"
include ValueCheck




module Calorie
  def kg(weight = 1)
    7200 * weight
  end





  def calc_run_calorie_distance(speed, distance)
    if is_numeric(speed) and
        is_numeric(distance) then
      speed * distance
    else
      raise ArgumentsError, "Arguments must be Numeric"
    end
  end



  def calc_Harris_Benedict(person)
    case person.sex
    when "f" then
      655.0955 + (9.5634  * person.weight) + (1.8496 * person.height) - (4.6756 * person.age)
    when "m" then
      66.4730  + (13.7516 * person.weight) + (5.0033 * person.height) - (6.7550 * person.age)
    else
      -1
    end
  end
end
