# Cart
class Cart
  include ItemContainer::Manager

  attr_reader :items

  def initialize
    @items = []
  end
end
