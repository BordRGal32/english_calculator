def english_calculator(number_string)
  operators = {"plus" => :+, "minus" => :- }
  words_array = number_string.split(' ')
  numbers = []
  found_operators = []

  words_array.each do |word|
    if (/\d/ =~ word) != nil
      numbers.push(/\d+/.match(word)[0])
    elsif operators[word] != nil
      found_operators.push(operators[word])
    end
  end
  plus_sign = found_operators[0]
  [numbers[0].to_i, numbers[1].to_i].inject(plus_sign)
end
 
# puts english_calculator("what is 2 plus 5")
