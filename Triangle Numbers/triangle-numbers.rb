gets.chomp.to_i.times do
    input = gets.chomp.to_i
    if input % 2 == 1
        puts 2
    else
        puts (input % 4 == 0) ? 3 : 4
    end
end