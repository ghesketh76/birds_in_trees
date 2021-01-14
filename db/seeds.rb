
buddy = Bird.create(name:"Buddy", breed: "Pigeon")
jim = Bird.create(name:"Jim", breed: "Parrot")
bob = Bird.create(name:"Bob", breed: "Blue Jay")

Tree.create(variety: "Oak", bird: buddy)
Tree.create(variety: "Maple", bird: jim)
Tree.create(variety: "Spruce", bird: bob)