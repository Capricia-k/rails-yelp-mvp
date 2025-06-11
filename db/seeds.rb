# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

spinella = { name: 'Spinella Restaurant & Bar', address: 'Rue Liotard 2, 1202 Genève, Suisse',
             phone_number: '+41 22 503 41 86', category: 'italian', rating: 4.9 }

armures = { name: 'Les Armures', address: 'Rue du Puits-Saint-Pierre 1, 1204 Genève, Suisse',
            phone_number: '+41 22 818 71 71', category: 'french', rating: 4.2 }

limite = { name: 'La Limite', address: 'Rue des Charmilles 11, 1203 Genève, Suisse',
           phone_number: '+41 22 345 32 98', category: 'french', rating: 4.4 }

izumi = { name: 'Izumi', address: 'Quai des Bergues 33, 1201 Genève, Suisse',
          phone_number: '+41 22 908 75 25', category: 'japanese', rating: 4.5 }

village = { name: 'Na Village', address: 'Rue de Saint-Jean 52-54, 1203 Genève, Suisse',
            phone_number: '+41 22 344 44 40', category: 'chinese', rating: 4.1 }

[spinella, armures, limite, izumi, village].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
