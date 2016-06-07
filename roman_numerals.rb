def to_roman(num)
    digits = num.to_s.chars.map(&:to_i)
    length = num.to_s.length
    x = 0
    length_arr = Array.new
    (1..length).each do
        x += 1
        length_arr = length_arr << x
    end
    numhash = Hash[length_arr.reverse.zip(digits)]
    answer = ""
    if numhash.has_key?(4)
        answer << "M" * numhash[4]
    end
    if numhash.has_key?(3)
        if numhash[3] < 4
            answer << "C" * numhash[3]
            elsif numhash[3] == 4
            answer << "CD"
            elsif numhash[3] == 9
            answer << "CM"
            elsif numhash[3] >= 5
            answer << "D" + ( "C" * (numhash[3]-5) )
        end
    end
    if numhash.has_key?(2)
        if numhash[2] < 4
            answer << "X" * numhash[2]
            elsif numhash[2] == 4
            answer << "XL"
            elsif numhash[2] == 9
            answer << "XC"
            elsif numhash[2] >= 5
            answer << "L" + ( "X" * (numhash[2]-5) )
        end
    end
    if numhash[1] < 4
        answer << "I" * numhash[1]
        elsif numhash[1] == 4
        answer << "IV"
        elsif numhash[1] == 9
        answer << "IX"
        elsif numhash[1] >= 5
        answer << "V" + ( "I" * (numhash[1]-5) )
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