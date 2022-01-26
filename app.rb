def clear_sand(expression)
  expression.tr('.', '')
end

def count_diamonds(expression)
  count = 0
  expression.length.times do |index|
    count += 1 if expression[index] == '<' && expression[index + 1] == '>'
  end

  count
end

expression = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
clean_expression = clear_sand(expression)
diamonds_qt = count_diamonds(clean_expression)
puts "After cleaning #{diamonds_qt} diamonds were found"
