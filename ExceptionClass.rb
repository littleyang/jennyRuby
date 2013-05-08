class ExceptionTest
  def initialize(x,y)
    @x = x
    @y = y
  end
  def calc(a,b)
    begin
      result = a/b
    rescue Exception => e
      puts e.class
      puts e
      result = nil
    end
    return result
  end
end

eb = ExceptionTest.new(1,2)
eb.calc(2,"hello")
