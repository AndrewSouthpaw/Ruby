
class Point
  attr_accessor :x, :y # defines methods x, y, x=, y=

  def initialize(x,y)
    @x = x
    @y = y
  end
  def distFromOrigin
    Math.sqrt(@x * @x + @y * @y) # uses ivars
  end
  def distFromOrigin2
    Math.sqrt(x * x + y * y) # uses getter methods
  end

end

class ThreeDPoint < Point
  attr_accessor :z

  def initialize(x,y,z)
    super(x,y)
    @z = z
  end
  def distFromOrigin
    d = super
    Math.sqrt(d * d + @z * @z)
  end
  def distFromOrigin2
    d = super
    Math.sqrt(d * d + z * z)
  end
end

class PolarPoint < Point
  # by not calling super cons, no x and y ivars
  # In Java/C# would just have unused x, y fields
  def initialize(r,theta)
    @r = r
    @theta = theta
  end
  def x
    @r * Math.cos(@theta)
  end
  def y
    @r * Math.sin(@theta)
  end
  def x= a
    b = y
    @theta = ...
    @r = ()
    self
  end
  def y= b
  end
  def distFromOrigin
    @r
  end
  # inherited distFromOrigin2 works as is!
  # because self.x and self.y (called in super) point to methods in subclass. Whoa.

