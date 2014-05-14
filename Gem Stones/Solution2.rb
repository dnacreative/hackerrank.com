result = nil
N = gets.chomp.to_i

N.times do
    line = gets.chomp.split("")
    result ||= line
    result = result & line
end

puts result.size