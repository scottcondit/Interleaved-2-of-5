#mod10.rb
########################################
puts
puts "script calculates mod(10) of a number and calculates check digit for that number"
puts "by spliting each place holder of a number and multiplying by alternating numbers 1 and 3"
puts "if number is even start with 1 and if number is odd start with 3"
puts "This was a fun script that was written to get a check digit" 
puts "for a Interleaved 2 of 5 barcode project"
puts
total = 0
#number = "104202000001"
print "enter a number and script will calculate mod(10) and get a check digit for that number: "
number = gets.chomp
puts
mod10 = number.to_i.modulo(10)
puts "mod10 of #{number} = #{mod10}"

if number.length.to_i.even?
puts "number length = #{number.length}, number is even"
value = 1 
else 
puts "number length = #{number.length}, number is odd"
value = 3 
end

#-I think I copied line below from somewhere but I couldn't find/remember from where
number.chars.each{|number|

if value == 1
puts "value = #{value}"
puts "number = #{number}"
puts "total(value * number) = #{number.to_i * value}"
number = number.to_i * value
total = total + number.to_i
value = 3
puts "running total(sum) = #{total}"
puts
else
puts "value = #{value}"
puts "number = #{number}"
puts "total(value * number) = #{number.to_i * value}"
number = number.to_i * value
total = total + number.to_i
value = 1
puts "running total(sum) = #{total}"
puts
end
}
cd = total.modulo(10)
    if cd != 0
        cd = 10 - total.modulo(10)
        else cd = 0
    end
puts	
puts "Check Digit of total.modulo(10) = #{cd}"
puts
puts "press enter to exit"
a = gets
