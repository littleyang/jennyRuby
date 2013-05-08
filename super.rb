class Thing
  def initialize(aName,aDescription)
    @name = aName
    @description = aDescription
  end
  def aMethod(aNewName)
    @name = aNewName
    puts "Thing.aMethod: #{self.inspect}"
  end
end

class AnotherThing < Thing
  def initialize(aName,aDescription)
    super
    @fullDescription = "This is #{@name}"
  end
  def aMethod(aNewName,aNewDescription)
    super(aNewName)
    puts "This is AnotherThing.aMethod #{self.inspect}"
  end
end

class ThirdThing < AnotherThing
  def initialize(aName,aDescription,aValue)
    super(aName,aDescription)
    @value = aValue
  end
  def aMethod(aNewName,aNewDescription,aNewValue)
    super(aName,aNewDescription)
    @vaule = aNewValue
    puts " this is ThirdThing.aMethod: #{self.inspect}"
  end
end
class FourthThing < ThirdThing
  def aMethod
    puts "This is the FourthThing.aMethod: #{self.inspect}"
  end
end
class FifthThing < FourthThing

end

