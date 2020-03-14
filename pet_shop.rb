def pet_shop_name (name)
  return name
end

def total_cash (sum)
  return sum [:admin][:total_cash]
end

def add_or_remove_cash (shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold (pets_gone)
pets_gone[:admin][:pets_sold]
end

def increase_pets_sold(pets_gone,pets_amount)
  pets_gone[:admin][:pets_sold] += pets_amount
end

def stock_count(animal_stock_count)
animal_stock_count[:pets].count
end

def pets_by_breed(shop, breed_type)
breed = {}
breed=shop[:pets].keep_if{|abreed|abreed[:breed]==breed_type}
p breed
return breed
end

# def find_pet_by_name(shop, pets_name)
# return shop[:pets].keep_if{|animal_names|animal_names[:name]==pets_name}
# end
# def find_pet_by_name(shop, pet_name)
#   animals = []
#   for store_pets in pet_name
#     if store_pets [:name]
#       animals.push(store_pets)
#     end
#   end
#   return animals
# end

def find_pet_by_name(pets, pet_name)
for pet in pets[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  nil
end

# def remove_pet_by_name(pets, pet_name)
#   for pet in pets[:pets]
#     if pet[:name] == pet_name
#     end
#   end
# end

# want to return pets index and find a away to delete from the array

# def remove_pet_by_name(pets, pet_name)
# p pets.length
#   pets.delete_if{|pet[:name] == pet_name|}
#   p pets.length
# end

# def remove_pet_by_name(shop, pet_name)
#   for pets in shop[:pets]
#   # shop[:name].delete(pet_name)
#     if pet[:pets] == pet_name
#   shop[:pets].delete(pet_name)
#     end
#   end
# end

# def remove_pet_by_name(shop, pet_name)
#  pet.delete_if{|value| shop[:name].include?(pet_name)}
# end

# ^^^^^^^^^^^^^^^^not working yet!
# I need to access shop[:pet] and compare it to pet[:name] after all that i
# can try to delete this
def remove_pet_by_name(pets, pet_name)
  for pet in pets[:name]
    if pet[:name] == pet_name
    pet.delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
pets = pet_shop[:pets]
pets.push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, payment)
customer[:cash] -= payment
end

def customer_pet_count(customers_pet)
  customers_pet[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
end



# optional home work

# I want to find the customers money(:cash) then compare it to pets(:price)
# if they can/can't afford it

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price]
end

# sell pet need to check if pet[:pet] is actually in stock in shop,
# need to check customer[:cash] has enough to buy pet[:pet]
# need to push(pet) to customers details and do the dreeded remove pet[:pet]
# from shop store
#
# def sell_pet_to_customer(shop, pet, customer)
