FactoryBot.define do
  factory :item do
    association :user

    name { Faker::Name.name }
    explain { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 2, to: 12) }
    sales_status_id { Faker::Number.between(from: 2, to: 7) }
    shipping_fee_status_id { Faker::Number.between(from: 2, to: 3) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    scheduled_delivery_id { Faker::Number.between(from: 2, to: 4) }
    price { Faker::Number.between(from: 300, to: 9_999_999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/Photos.jpeg'), filename: 'test_image.png')
    end
  end
end
