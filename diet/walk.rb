# coding: utf-8
require "./Activity.rb"




class Walk < Activity
  def initialize(speed, minutes)
    super(speed, minutes)
  end




  def calc_mets()
    case @speed
    when 1 .. 1.9   then
      @speed * 0.5
    when 2 .. 3.9   then
      @speed * 0.6
    when 4          then
      3.0
    when 4.1 .. 5.9 then
      @speed * 0.8
    when 6          then
      5.0
    else
      @speed * 0.9
    end
  end
end
