require_relative 'item'
require_relative 'cart'

item1 = Item.new({ price: 10, weight: 100, name: 'Car' })
item2 = Item.new({ weight: 200, name: 'Carrrrr' })

cart = Cart.new
cart.add_item item1
cart.add_item item2

puts Item.discount
