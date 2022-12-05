Customer.destroy_all
Item.destroy_all
Order.destroy_all

c1 = Customer.create(username: "jpal15", name: "Jeremy Pal" address: "310 Central Ave Waterloo TN 35677 USA", phone: 6741106893)
c2 = Customer.create(username: "alina3", name: "Alina Taylor" address: "188 E 54th ST Brooklyn NY 11203 USA", phone: 7739306569)
c3 = Customer.create(username: "bb55", name: "Brandon Brown" address: "1620 97th St Tacoma WA 98444 USA", phone: 3233545117)

i1 = Item.create(name: "", description: "", price: "", image: "")
i2 = Item.create(name: "", description: "", price: "", image: "")
i3 = Item.create(name: "", description: "", price: "", image: "")

Order.create(customer_id: c1.id, item_id: i1.id, order_number: 1)
Order.create(customer_id: c1.id, item_id: i2.id, order_number: 1)
Order.create(customer_id: c1.id, item_id: i3.id, order_number: 1)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2)
Order.create(customer_id: c2.id, item_id: i1.id, order_number: 2)