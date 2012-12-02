
class String
  def align position, length
    escaped = Terminal::Table::Cell.new(:index => 0, :table => true).escape(self)
    escape_string_width = self.length - escaped.length

    l = length - (Unicode::width(escaped) + escape_string_width - self.length)
    self.__send__ position, l
  end
  alias_method :left, :ljust
  alias_method :right, :rjust
end
