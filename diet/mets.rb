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



kay = Person.new('kay', 'slimane', 172, 61, 25, "m")


jog = Jog.new(11, Translation.calc_required_time(11, 10))

jog_calorie  = jog.calc_calorie(kay.weight) * (31.0 / 7 * 5)
daily_use_base_calorie = Calorie.calc_Harris_Benedict(kay)
daily_use_calorie = ( daily_use_base_calorie + 500 ) * 30


puts "生活代謝 : #{daily_use_base_calorie.round(1)}kcal"

puts <<"USE_CALORIE"
person object is #{kay.inspect}
jog_calorie         #{jog_calorie.round(1)} kcal
daily_use_calorie + #{daily_use_calorie.round(1)} kcal
                  = #{(jog_calorie + daily_use_calorie).round(1)} kcal

monthly_income    : #{(1000 * 31)} kcal

diet pase         : #{( ((jog_calorie + daily_use_calorie).round(1) - (1000 * 31) ) / 7200).round(3) } kg / month
if no jog         : #{((daily_use_calorie - (1000 * 31)) / 7200).round(3)} kg / month
USE_CALORIE


puts <<"BMI"

Current Weight            : #{kay.weight} kg
Current BMI               : #{calc_bmi(kay.weight, kay.height).round(2)}
My Ideal BMI(18)          : #{calc_ideal_weight(kay.height, 18).round(2)} kg
Medical Ideal BMI(21.75)  : #{calc_standard_bmi(kay.height).round(2)} kg
Last                      : #{(kay.weight - calc_ideal_weight(kay.height, 18)).round(2)} kg
BMI

