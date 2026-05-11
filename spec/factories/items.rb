FactoryBot.define do
  factory :item do
    name                  { Faker::Name.initials(number: 2) }
    info                  { Faker::Lorem.sentence }
    category_id           { 1 }
    sales_status_id       { 1 }
    shipping_fee_id       { 1 }
    prefecture_id         { 1 }
    scheduled_delivery_id { 1 }
    price                 { Faker::Number.between(from: 300, to: 9_999_999) }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
