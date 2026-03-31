db.users.insertOne({
  name: "Alice",
  age: 30,
  email: "alice@gmail.com",
  orders: [
    { product: "Phone", price: 800 },
    { product: "Laptop", price: 1200 }
  ]
});