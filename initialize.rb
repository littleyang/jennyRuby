class DogTest
  def initialize(aName,aDescription)
    @name = aName
    @description = aDescription
  end
  def to_s
    "The #{@name} and the #{@description}"
  end
  def tell_name
    puts @name
  end
  def tell_description
    puts @description
  end
end
dog = DogTest.new("helloyy","this is a test")
puts dog.to_s
dog.tell_name
dog.tell_description

