# Linear time solution

def  pairs( a,k) 
    
    h = Hash[a.map.with_index {|x,i| [x,i] }]
    
    res = 0;
    
    a.each_with_index do |x,i|
        y = x - k
        res += 1 if h[y] 
    end
    
    print res
end

a = gets.strip.split(" ").map! {|i| i.to_i}
b_size=a[0]
k=a[1]
b = gets.strip.split(" ").map! {|i| i.to_i}
puts pairs(b,k)