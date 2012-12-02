
class String
  def align position, length
    l = length - (display_width - self.length)
    self.__send__ position, l
  end
  alias_method :left, :ljust
  alias_method :right, :rjust

  def display_width
    split('').inject(0) do |width, c|
      width + Unicode::width(c).abs
    end
  end
end
