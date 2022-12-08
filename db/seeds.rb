Item.destroy_all
Order.destroy_all

i1 = Item.create(name: "Blanco", description: "Unaged tequila", price: 30, image: "https://i.imgur.com/3Z9BEai.png")
i2 = Item.create(name: "Reposado", description: "Aged tequila, 2 to 12 months.", price: 45, image: "https://i.imgur.com/TaZb8iU.png")
i3 = Item.create(name: "Anejo", description: "Aged tequila, 1 to 3 years.", price: 68, image: "https://i.imgur.com/93I2eMl.png")

Order.create(item_id: i1.id, complete: true, quantity: 3)
Order.create(item_id: i2.id, complete: true, quantity: 2)
Order.create(item_id: i3.id, complete: true, quantity: 5)
Order.create(item_id: i1.id, complete: true, quantity: 10)