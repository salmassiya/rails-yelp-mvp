# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Restaurant.destroy_all

La_Belle_Étoile = {name: "La Belle Étoile", address: "17 Rue du Faubourg Saint-Antoine, Paris", category:"french"}
Le_Jardin_Gourmand =  {name: "Le Jardin Gourmand", address: "23 Quai de la Tournelle, Paris", category:"french"}
Chez_Marcel =  {name: "Chez Marcel", address: "8 Rue de la Michodière, Paris", category:"french"}
Auberge_du_Coin =  {name: "L'Auberge du Coin", address: "56 Rue du Faubourg Montmartre, Paris",category:"french"}
Le_Petit_Gourmet =  {name: "Le Petit Gourmet", address: "23 Quai de la Tournelle, Paris", category:"french"}

[La_Belle_Étoile, Le_Jardin_Gourmand, Chez_Marcel, Auberge_du_Coin, Le_Petit_Gourmet].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end


Review.create(content: "test", rating: 5, restaurant: Restaurant.last)
