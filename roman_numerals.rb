def to_roman(num)
    number = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman = ["M", "DM", "D", "CD", "C", "LC", "L", "XL", "X", "XI", "V", "IV", "I"]
    answer = ""
    for i in 0...number.length
        while num >= number[i]
            answer << roman[i]
            num = num - number[i]
        end
    end
    return answer
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?

puts to_roman(12)
puts to_roman(25)
puts to_roman(368)
puts to_roman(2791)