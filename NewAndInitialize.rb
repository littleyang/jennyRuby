class MyClass
  def initialize(aStr)
    @avar = aStr
  end
  def MyClass.new(aStr)
    super
    @answer = aStr.swapcase
  end
end

ob = MyClass.new("hello,world")
puts ob
puts ob.class
