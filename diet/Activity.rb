# coding: utf-8
require "./Util.rb"
include ValueCheck




class Activity
  def initialize(speed, minutes)
    if numeric?(speed) and
        numeric?(minutes) then
      @speed   = speed
      @minutes = minutes
    else
      raise ArgumentError, "Aruguments must be Numeric"
    end
  end



  def speed
    @speed
  end



  def minutes
    @minutes
  end




  def calc_mets(speed)
    -1
  end



  def calc_calorie(weight)
    calc_mets * weight * (minutes / 60.0)
  end



end
