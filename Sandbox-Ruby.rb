# Programming Languages, Dan Grossman, Jan-Mar 2013 
# Section 7: Using Blocks

class Foo
  def initialize(max)
    @max = max
  end

  def silly
    yield(4,5) + yield(@max,@max)
  end

  def count base
    if base > @max
      raise "reached max"
    elsif yield base
      1
    else
      1 + (count(base+1) {|i| yield i})
    end
  end
end

f = Foo.new(1000)

f.silly {|a,b| 2*a - b}

f.count(10) {|i| (i * i) == (34 * i)}
require_relative './127_example' # similar to ML's use

# above line defines the MyRational class, but now we can change it

class MyRational
  def double
     self + self 
   end
end

class Fixnum
  def double
    self + self
  end
end

def m
  42
end

class Object
  def m 
    43
  end
end

# this one will crash irb
# class Fixnum
#   def + x
#     42
#   end
# end
