def to_roman(num)
    if num < 4
        return "I" * num
    elsif num == 4
        return "IV"
    elsif num >= 5
        return "V" + ("I" * (num-5))
    end
end

# Drive code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"

# TODO: what other cases could you add to ensure your to_roman method is working?