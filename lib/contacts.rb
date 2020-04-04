require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
contacts.each do |person, details| #Here we are iterating the key of NAMES (person) in the contacts hash (Jon Snow and Freddy Mercury) and the keys of DETAILS (detials) of the names in the contacts hash.
if person == "Freddy Mercury" # We are saying if any person in the contacts hash is named Freddy Mercury
  details.each do |attribute, data| # We should iterate over details; which are 'subhashes' of information related to Freddy Mercury. attribute has keys of names, email, favorite ice cream flavors and the data are the values of the keys of attribute we will iterate as well.
    #binding.pry

if attribute == :favorite_ice_cream_flavors
data.delete_if {|ice_cream| ice_cream == "strawberry"}
#binding.pry
end
end
end
end
end
