def sum_substrings(str)
  sum, mult = 0, 1
  chars = str.split("")
  len = chars.size
  (len).downto(1) do |i|
    sum += (chars[i-1].to_i) * mult * i
    sum %= 1000000007
    mult = mult*10 +1
  end
  return sum
end

s = gets.chomp
puts sum_substrings(s)