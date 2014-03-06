def english_calculator(number_string)

  questions = number_string.split("?")
  final_results = []
  questions.each do |question|

    operators = {"plus" => :+, "minus" => :-, "times" => :*, "divided" => :/, "modulo" => :%, "power" => :**}
    words_array = question.split(' ')
    numbers = []
    found_operators = []

    words_array.each do |word|
      if !(/[\d\.]/ =~ word).nil?
        numbers.push(/[\d\.]+/.match(word)[0])
      elsif !operators[word].nil?
        found_operators.push(operators[word])
      end
    end
    current_result = numbers[0].to_f

    1.upto(numbers.length-1) do |index|
      current_operator = found_operators[index - 1]
      current_result = [current_result, numbers[index].to_f].inject(current_operator)
    end
    current_result = current_result.round(1)
    final_results.push(current_result)
  end
    final_results
end

puts RubyVM::InstructionSequence.compile("2+4" ).eval 
 
