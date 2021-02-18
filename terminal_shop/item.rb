# frozen_string_literal: true

class Item
  attr_accessor :price, :name

  def self.discount
    month = Time.new.mon
    if month == 2
      0.3
    else
      0.1
    end
  end

  def initialize(options = {})
    @price  = options[:price]
    @name   = options[:name]
  end

  def info
    yield(price)
    yield(name)
  end
end
