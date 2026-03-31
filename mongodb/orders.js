// Read
db.users.find({ age: { $gt: 25 } });

// Update
db.users.updateOne({ name: "Alice" }, { $set: { age: 31 } });

// Delete
db.users.deleteOne({ name: "Alice" });