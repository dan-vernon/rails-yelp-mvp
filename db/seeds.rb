require 'faker'

10.times do
  Restaurant.create(name:          Faker::Kpop.boy_bands,
                 address:       Faker::Address.street_address,
                 phone_number:  Faker::PhoneNumber.phone_number,
                 category:      Restaurant::CATEGORIES.sample
                 )
end
