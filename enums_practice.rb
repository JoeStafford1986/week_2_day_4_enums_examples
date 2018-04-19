pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]

# Print out all of the names using a loop
for pet in pets
  p pet[:name]
end

# Print out all of the names using an enumerable
pets.each {|pet| p pet[:name]}

# Find a pet using a loop and if statement
for pet in pets
  if pet[:name] == "Arthur"
    p pet
  end
end

# Find a pet using an enumerable
found_pet = nil
pets.each do |pet|
  if pet[:name] == "Arthur"
    found_pet = pet
  end
end
p found_pet
#or we could do this - line below uses .find and adds just the [:breed] key onto the end
found_pet = pets.find {|pet| pet[:name] == "Arthur"}[:breed]

p pets.find {|pet| pet[:name][0] == "M"}

pet_breeds = pets.map {|pet| pet[:breed]}

p pet_breeds
