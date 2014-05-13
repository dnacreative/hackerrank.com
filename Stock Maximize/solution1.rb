def max_split(arr)
	max = arr.max
	c = 0 ; acc = 0
	arr.delete_if do |v|
		if v != max
			acc += v ; c += 1 ;
		else
			profit = (max * c) - acc
			return arr, profit
		end
	end
end

def profit(arr)
	pro = 0
	while arr.count > 1 do
		arr, temp = max_split(arr) 
		pro += temp
		arr.delete_at(0)
	end
	return pro
end

T = gets.chomp.to_i
output = []
forecast = []

T.times do
    N = gets.chomp.to_i
    forecast = gets.chomp.split(" ").map!{ |v| v.to_i }
    output << profit(forecast) 
end

puts output