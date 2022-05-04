FactoryBot.define do
  factory :order_form do
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
    postal_code { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    building { Faker::Address.street_address }
    phone_number { '09036164910' }
  end
end
