
class String
  def align position, length
    l = length - (Unicode::width(self) - self.length)
    self.__send__ position, l
  end
  alias_method :left, :ljust
  alias_method :right, :rjust
end
