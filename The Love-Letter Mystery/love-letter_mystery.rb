gets.chomp.to_i.times do
    s = gets.chomp.downcase.split("")
    l = s.length

    if l%2 == 0
        to = l / 2
        from = l - 1
    else
        to = (l / 2) + 1
        from = l - 1
    end
    
    min = 0 ; j = 0

    from.downto(to) do |i|
        min += (s[i].sum - s[j].sum).abs
        j += 1
    end

    puts min
end