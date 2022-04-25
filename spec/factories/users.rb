FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {Faker::Internet.free_email}
    password              {'a000000'}
    password_confirmation {password}
    last_name             {'蓬萊'}
    first_name            {'豊哉'}
    last_name_kana        {'ホウライ'}
    first_name_kana       {'アツヤ'}
    birth_date            {'1995-08-30'}
  end
end