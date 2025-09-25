class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?

    tokens = numbers.split(/,|\n/).reject(&:empty?)
    ints = tokens.map(&:to_i)
    ints.reduce(0, :+)
  end
end