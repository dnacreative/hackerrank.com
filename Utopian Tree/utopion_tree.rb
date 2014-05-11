t = gets.chomp.to_i

def recur(x,i)
    return x if i == 0
    x = 2*x +1
    recur(x,i-1)
end

arr =[]

t.times do
    arr << gets.chomp.to_i
end

arr.each do |v|
    if v == 0
        puts 1
        next
    end
    
    div = v/2 ; mod = v%2
    r = recur(1,div)
    puts (mod == 0 ? r : 2*r )
end