
ActiveRecord::Base.transaction do
20.times do
    User.create(
      email: Faker::Internet.unique.email,
      password: 'password',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      pincode: Faker::Address.zip_code,
      street_address: Faker::Address.street_address,
      profile_title: User::PROFILE_TITLE.sample,
      about: Faker::Lorem.paragraph,
      contact_number: Faker::PhoneNumber.phone_number_with_country_code
    )
  end
end

puts 'User created successfully================================'