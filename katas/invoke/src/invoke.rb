class Array
  def invoke(name, *args, &block)
    self.select(&block).map { |item| item.send(name, *args) }
  end
end