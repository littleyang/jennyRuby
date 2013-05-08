x = "hello,world"
ablock = Proc.new{puts(x)}
def aMethod(b)
  x = "googleBye"
  b.call
end
puts (x)
ablock.call
aMethod(ablock)
ablock.call
puts(x)
