FactoryBot.define do
  factory :order_destination do
    post_code      { '123-4567' }
    prefecture_id  { 1 }
    city           { '東京都' }
    street         { '1-1' }
    building_name  { '東京ハイツ' }
    phone_number   { '09012345678' }

    user_id { Faker::Number.number(digits: 5) }
    item_id { Faker::Number.number(digits: 5) }
  end
end
