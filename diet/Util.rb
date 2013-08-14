module ValueCheck
  def numeric?(variable)
    variable.kind_of?(Numeric)
  end
end








module Translation
  def mile_to_km(mile = 1)
    mile * 1.60934
  end




  def calc_required_time(speed, distance)
    60.0 * ((distance * 1.0) / speed)
  end
end
