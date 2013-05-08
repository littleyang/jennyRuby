begin
  x = 1/0
rescue Exception => exc
  puts exc.class
  puts exc
end
