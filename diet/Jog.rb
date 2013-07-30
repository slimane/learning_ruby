# coding: utf-8
require "./Activity.rb"




class Jog < Activity
  def initialize(speed, minutes)
    super(speed, minutes)
  end




  def calc_mets
    case @speed
    when 1..3         then
      @speed * 0.2
    when 3.1 .. 5.9   then
      @speed * 0.4
    when 6.0 .. 7.9   then
      @speed * 0.7
    when 8            then
      7.0
    when 8.1 .. 9.9   then
      @speed * 1.0
    when 10           then
      11.0
    when 10.1 .. 11.9 then
      @speed * 1.07
    when 12           then
      12.5
    else
      @speed * 1.1
    end
  end
end
