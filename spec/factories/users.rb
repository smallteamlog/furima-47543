FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.email }
    password              { "1a#{Faker::Internet.password(min_length: 6)}" }
    password_confirmation { password }
    last_name             do
      Faker::Config.locale = :ja
      Faker::Name.last_name
    end
    first_name do
      Faker::Config.locale = :ja
      Faker::Name.first_name
    end
    last_name_kana        { 'テスト' }
    first_name_kana       { 'タロウ' }
    birth_date            { Faker::Date.backward(days: 365 * 20) }
  end
end
