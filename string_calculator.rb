class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiter = ","
    if numbers.start_with?("//")
      delimiter_spec, numbers = numbers.split("\n", 2)
      delimiter = delimiter_spec[2]
    end
    
    numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
  end
end
