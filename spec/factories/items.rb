FactoryBot.define do
  factory :item do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    category_id { rand(2..11) }
    shipping_charge_id { rand(2..3) }
    prefecture_id             { rand(2..48) }
    condition_id { rand(2..7) }
    day_id        { rand(2..4) }
    price       { rand(300..9_999_999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end

  end
end
