class X
  def x
    puts("x:")
    def y
      puts("y:")
    end
    def z
      puts("z:")
    end
  end
end

ob = X.new
ob.x
ob.y
ob.z
