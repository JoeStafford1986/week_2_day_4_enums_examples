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

# ## Task: using enumerable methods:
# ## 1. Find the pet which breed is Husky

found_pet = pets.find {|pet| pet[:breed] == "Husky"}
p found_pet

# ## 2. Make an array of all of the pets' names

p pet_breeds = pets.map {|pet| pet[:name]}

# ## 3. Find out if there are any pets of breed 'Dalmation' (true or false)

pets.find do |pet|
  if pet[:breed] == "Dalmation"
    p "found true"
  else
    p "found false"
  end

end

## 4. Find the most expensive pet i.e. pet with the highest/maximum price

current_pet = pets[0]

pets.each do |pet|
  if pet[:price] > current_pet[:price]
    current_pet = pet
  end
end
p current_pet

## 5. Find the total value (price) of all of the pets added together.

sum = 0
pets.each do |pet|
  sum += pet[:price]
end
p sum

## 6. Change each pet so their price is 50% cheaper

pets_half_price = []
pets.each do |pet|
  pet[:price] = pet[:price]/ 2
  pets_half_price << pet
end
p pets_half_price
