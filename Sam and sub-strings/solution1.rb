def sum_substrings(str)
  sum = 0
  chars = str.split("")
  len = chars.size
  (0..len-1).each do |i|
    (i..len-1).each do |j|
      sum += chars[i..j].join.to_i
      sum %= 1000000007
    end
  end
  return sum
end

s = gets.chomp
puts sum_substrings(s)