T  = gets.chomp.to_i
output = []

T.times do
	N = gets.chomp.to_i
	forecast = gets.chomp.split(" ").map!{ |v| v.to_i }
	max = 0 ; profit = 0 ;

	(N-1).downto(0) do |i|
		current = forecast[i]
		max = current if max <= current
		profit += max - current
	end
	output << profit
end

puts output