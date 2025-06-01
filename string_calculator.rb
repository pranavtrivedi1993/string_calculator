class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
  
    delimiter = ","
    if numbers.start_with?("//")
      delimiter_spec, numbers = numbers.split("\n", 2)
      delimiter = delimiter_spec[2]
    end
  
    numbers = numbers.gsub("\n", delimiter)
    nums = numbers.split(delimiter).map(&:to_i)
  
    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
  
    nums.sum
  end
end
