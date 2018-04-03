class Figure
end

class Disk < Figure
  def initialize(r)
    @r = r
  end

  def area
    Math::PI * @r * @r
  end
end
puts Disk.new(10).area

class Trapeze < Figure
  def initialize(a, b, h)
    @h = h
    @a = a
    @b = b
  end

  def area
    (@a + @b) * @h / 2.0
  end
end
puts Trapeze.new(10, 20, 4).area

class Rectangle < Trapeze
  def initialize(a, b)
    @a = a # super(b, b, a)
    @b = b
  end

  def area
    @a * @b
  end
end
puts Rectangle.new(10, 20).area

class Square < Rectangle
  def initialize(a)
    @a = a # super(a, a)
  end
  def area
    @a * @a
  end
end
puts Square.new(20).area
