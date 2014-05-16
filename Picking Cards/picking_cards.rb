gets.chomp.to_i.times do
    h = Hash.new(0)
    result = 1 
    
    n = gets.chomp.to_i
    arr = gets.chomp.split(" ").map(&:to_i)

    arr.each do |v|
        h[v] += 1
    end
    
    0.upto(n-1) do |step|
        result *= h[step]
        result %= 1000000007
        h[step+1] += h[step] -1
    end
    
    puts result
end
    