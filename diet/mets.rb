# coding: utf-8
require "./Jog.rb"
require "./Walk.rb"
require "./Calorie.rb"
require "./Person.rb"
require "./Util.rb"
require "./Weight.rb"
include Weight
include Calorie
include Translation

def display_bmi_info(weight, height, ideal_bmi)
  puts <<-"BMI_INFO"
--- BMI INFO ---
  Current Weight       : #{weight} kg
  Current BMI          : #{calc_bmi(weight, height).round(2)}
  Ideal BMI            : #{ideal_bmi}
  My Ideal Weight      : #{calc_ideal_weight(height, ideal_bmi).round(2)} kg
  Medical Ideal Weight : #{calc_standard_bmi(height).round(2)} kg
  Real - Ideal         : #{(weight - calc_ideal_weight(height, ideal_bmi)).round(2)} kg
  BMI_INFO
end



kay = Person.new('kay', '', 172, 61.3, 25, "m")


jog = Jog.new(11, Translation.calc_required_time(12, 11))
jog_calorie  = jog.calc_calorie(kay.weight) * (31.0 / 7 * 5)

walk = Walk.new(7, calc_required_time(7, 24))
walk_calorie =  walk.calc_calorie(kay.weight) * (31.0 / 7 * 2)

daily_use_base_calorie = Calorie.calc_Harris_Benedict(kay)
daily_use_calorie = ( daily_use_base_calorie + 500 ) * 30


daily_use_all_calorie = jog_calorie + walk_calorie + daily_use_calorie


puts "基礎代謝 : #{daily_use_base_calorie.round(1)}kcal"

puts <<"USE_CALORIE"
person object is #{kay.inspect}
jog_calorie / day   #{jog.calc_calorie(kay.weight)}
jog_calorie         #{jog_calorie.round(1)} kcal
daily_use_calorie + #{daily_use_calorie.round(1)} kcal
                  = #{(jog_calorie + daily_use_calorie).round(1)} kcal

walk_calorie /day   #{walk.calc_calorie(kay.weight)}
walk_calorie      + #{walk_calorie.round(1)} kcal
                  = #{(walk_calorie + jog_calorie + daily_use_calorie).round(1)} kcal

monthly_income    : #{(1000 * 31)} kcal

diet pase         : #{( ((jog_calorie + daily_use_calorie).round(1) - (1000 * 31) ) / 7200).round(3) } kg / month
if no jog         : #{((daily_use_calorie - (1000 * 31)) / 7200).round(3)} kg / month
USE_CALORIE

display_bmi_info(kay.weight, kay.height, 18)

puts 12 * kay.weight
jog_tweenteen = Jog.new(11, 65.5)
puts jog_tweenteen.calc_calorie(kay.weight)
