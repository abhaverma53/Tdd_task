class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?

    str = numbers.dup
    delimiter_regex = /,|\n/

    if str.start_with?("//")
      header, rest = str.split("\n", 2)
      custom = header[2..-1] || ""
      delimiter_regex = Regexp.new(Regexp.escape(custom))
      str = rest || ""
    end

    tokens = str.split(delimiter_regex).reject(&:empty?)
    ints = tokens.map(&:to_i)
    ints.reduce(0, :+)
  end
end