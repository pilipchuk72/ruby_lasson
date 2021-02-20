require_relative 'item_container'
require_relative 'item'
require_relative 'cart'
require_relative 'order'

item1 = Item.new({ price: 30, weight: 100, name: 'Car' })
item2 = Item.new({ price: 10, weight: 2500, name: 'Bus' })
item3 = Item.new({ weight: 2500, name: 'Bus' })

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3
cart.remove_item
puts cart.items.size

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
# order.remove_item
puts order.items.size
puts order.count_valid_items
