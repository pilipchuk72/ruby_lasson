# frozen_string_literal: true

class Item
  attr_accessor :real_price, :name

  @@discount = 0.05

  def self.discount
    month = Time.new.mon
    @@discount + 0.1 if month == 2
  end

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  def info
    yield(price)
    yield(name)
  end

  def price
    ((@real_price - @real_price * self.class.discount) + tax) if @real_price
  end

  private

  def tax
    type_tax = if instance_of?('VirtualItem')
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price * 0.1
               else
                 @real_price * 0.2
               end
    type_tax + cost_tax
  end
end
