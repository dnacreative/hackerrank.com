h = Hash.new(0)

N = gets.chomp.to_i
N.times do
    line = (gets.chomp.split(""))
    line.uniq.each do |v|
        h[v] += 1
    end
end

count = 0
h.each do |k,v|
    count += 1 if v == N
end
puts count