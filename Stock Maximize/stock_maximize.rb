T = gets.chomp.to_i
output = Array.new(T)
forecast = []

T.times do
    N = gets.chomp.to_i
    forecast = gets.chomp.split(" ").map!{ |v| v.to_i }
end

