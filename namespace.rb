##ruby 的命名空间规则
#ruby 的const变量,class里面的class 都是以双冒号:的形式调用
#可以参考一下的一些代码示例
#类的名称都是以大写字母开头
#关于类里面和module里面的const变量或者是类，同样按照上述方式进行处理
#

class Trangle
  SIDES = 3
  def show_sides
    puts "A trangle has #{Trangle::SIDES} sides"
  end
end

class Square
  SIDES = 4
  def show_sides
    puts "A Square has #{Square::SIDES} sides"
  end
end

module HelpModule
  class Help
    def help
      puts "this is the module HelpModule, Help class, help method"
    end
  end

  class My_Name
   def show_name
     puts "this is the module：#{HelpModule.class} and the module class:#{HelpModule::My_Name.class}"
   end
  end
end

####
# the follow is the test method
####


t = Trangle.new
t.show_sides

s = Square.new
s.show_sides

h = HelpModule::Help.new
h.help

m = HelpModule::My_Name.new
m.show_name



