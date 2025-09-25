class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?
    tokens = numbers.split(/,|\n/)
    return tokens.first.to_i if tokens.size == 1
  end
end