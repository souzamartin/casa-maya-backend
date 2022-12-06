Customer.destroy_all
Item.destroy_all
Order.destroy_all

c1 = Customer.create(username: "jpal15", name: "Jeremy Pal", address: "310 Central Ave Waterloo TN 35677 USA", phone: 6741106893)
c2 = Customer.create(username: "alina3", name: "Alina Taylor", address: "188 E 54th ST Brooklyn NY 11203 USA", phone: 7739306569)
c3 = Customer.create(username: "bb55", name: "Brandon Brown", address: "1620 97th St Tacoma WA 98444 USA", phone: 3233545117)

i1 = Item.create(name: "Blanco", description: "Unaged tequila", price: 30, image: "https://render.fineartamerica.com/images/rendered/square-product/small/images/artworkimages/mediumlarge/1/6-moonshine-jug-allan-swart.jpg")
i2 = Item.create(name: "Reposado", description: "Aged tequila, 2 to 12 months.", price: 45, image: "https://render.fineartamerica.com/images/rendered/square-product/small/images/artworkimages/mediumlarge/1/6-moonshine-jug-allan-swart.jpg")
i3 = Item.create(name: "Anejo", description: "Aged tequila, 1 to 3 years.", price: 68, image: "https://render.fineartamerica.com/images/rendered/square-product/small/images/artworkimages/mediumlarge/1/6-moonshine-jug-allan-swart.jpg")

Order.create(customer_id: c1.id, item_id: i1.id, order_number: 1, complete: true)
Order.create(customer_id: c1.id, item_id: i2.id, order_number: 1, complete: true)
Order.create(customer_id: c1.id, item_id: i3.id, order_number: 1, complete: true)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2, complete: true)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2, complete: true)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2, complete: true)