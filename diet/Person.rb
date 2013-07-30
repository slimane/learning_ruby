class Person
  def initialize(first_name, last_name, height, weight, age, sex)
    if !first_name.empty? and
        !last_name.empty? then
      @first_name = "Anonymous"
      @last_name  = ""
    else
      @first_name = first_name
      @last_name  = last_name
    end


    if sex == "m" or
        sex == "f" then
      @sex = sex
    else
      raise ArgumentsError, "sex must be an 'm' or 'f'"
    end

    if height.kind_of?(Numeric) and
        weight.kind_of?(Numeric) then
      @height = height
      @weight = weight
    else
      raise ArgumentError, "height and weight must be Numeric"
    end

    if age.kind_of?(Integer) then
      @age = age
    else
      raise ArgumentError, "Age must be an Integer"
    end
  end



  def first_name
    @first_name
  end


  def last_name
    @last_name
  end


  def height
    @height
  end


  def age
    @age
  end


  def sex
    @sex
  end


  def weight
    @weight
  end



  def calc_Harris_Benedict
  end
end
