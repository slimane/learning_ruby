class Dieter < Person
  def initialize(height, weight, calorie_income, used_calorie, age, gender: "unknown")
    super(height, weight, age, gender)
    if calorie_income.kind_of?(Numeric) and
        used_calorie.kind_of?(Numeric) then
      @calorie_income = calorie_income
      @used_calorie = used_calorie
    else
      raise ArgumentError, "Arguments must be Numeric"
    end
  end
end
