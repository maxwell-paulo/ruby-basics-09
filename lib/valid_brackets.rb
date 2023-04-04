def valid_brackets?(string)
  # TODO

  array = []

  string.each_char do |c|
    if c == "("
      array.push(c)
    elsif c == ")"
      if array.empty? || array.pop != "("
        return false
      end
    end
  end
  return array.empty?
end

puts valid_brackets?("()")
puts valid_brackets?(")(()))")
puts valid_brackets?("(")
puts valid_brackets?("(())((()())())")
