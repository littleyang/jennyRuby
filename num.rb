=begin
this is the comment
do you hvae try it?
no 
this is just the test
=end
taxrate = 0.175
puts "please input your tax: "
stax = gets
subtotal = stax.to_f
if(subtotal < 0.0)
  subtotal = 0.0
end
tax = subtotal * taxrate
puts "your tax on #{subtotal} is: #{tax}"
