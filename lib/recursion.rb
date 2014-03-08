def threes_function(number, index=0)

  big_numbers = {0=> "", 1 => " thousand ", 2 => " million ", 3 => " billion ", 4 => " trillion "}
  numbers = {0 => "", 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
              10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
              20 => 'twenty', 30 => 'thirty', 40 => 'fourty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

  results = ''

  if number >= 1000
    results += threes_function(number/1000,index+1) + big_numbers[index+1] + threes_function(number%1000,index)
  elsif number >= 100
    results += " " + numbers[number/100] + " hundred " + threes_function(number%100, index)
  elsif number > 0
    if numbers.has_key?(number)
      results += " " + numbers[number]
    else
      results += numbers[number - (number % 10)] + "-" + numbers[number % 10]
    end
  end
  return results.strip
end


puts threes_function(2300400500600)


