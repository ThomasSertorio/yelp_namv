Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:        "Indian"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:        "Italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:        "Chinese"
  },
  {
    name:         "Alicheur",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:        "Thai"
  },
  {
    name:         "Subway",
    address:      "4 rue Blainville 75005 Paris",
    category:        "Fastfood"
  },
  {
    name:         "Mamaroma",
    address:      "route de Suresnes 75016 Paris",
    category:        "Pizza"
  }]
restaurants_attributes.each { |params| Restaurant.create!(params) }

Review.create!(content: "That was awesome", rating: 3, restaurant: Restaurant.find_by(name: "Subway"))
Review.create!(content: "That was horrible", rating: 3, restaurant: Restaurant.find_by(name: "Mamaroma"))














