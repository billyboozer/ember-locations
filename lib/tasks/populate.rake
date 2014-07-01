namespace :db do
  task populate: :environment do

    Location.destroy_all

    20.times do
      Location.create(
        title: Faker::Address.city,
        address: Faker::Address.street_address,
        lat: Faker::Geolocation.lat,
        lng: Faker::Geolocation.lng,
        comment: Faker::HipsterIpsum.words(10).join(' ')
        )
    end

  end
end
