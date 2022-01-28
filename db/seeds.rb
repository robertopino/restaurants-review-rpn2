Restaurant.destroy_all

50.times do
    restaurant = Restaurant.new(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_name,
        rating: (1..5).to_a.sample,
        chef_name: Faker::Name.name
    )
    restaurant.save!
end

