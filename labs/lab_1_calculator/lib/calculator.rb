class Calculator

  def check_numeric(value)
    return true if value.is_a? Numeric
    false
  end

  def add(num1, num2)
    num1 + num2
  end

  def subtract(*numbers)
    return numbers.reduce(:-) if numbers.all? {|value| check_numeric(value)}
    raise "Cannot perform subtraction with a non-number"
  end

  def multiply(*numbers)
    return numbers.reduce(:*) if numbers.all? {|value| check_numeric(value)}
    raise "Cannot perform multiplication with a non-number"
  end

  def divide(*numbers)
    if numbers.all? {|value| check_numeric(value)}
      return numbers.reduce(:fdiv).to_i if numbers.reduce(:fdiv) != Float::INFINITY
      raise "Cannot divide by 0"
    else raise "Cannot perform division with a non-number"
    end
  end

end