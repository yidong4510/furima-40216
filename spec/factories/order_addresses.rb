FactoryBot.define do
  factory :order_address do
    user_id       { 1 }
    item_id       { 1 }
    post_code     { '111-1111' }
    prefecture_id { 2 }
    city          { 'hoge_city' }
    block         { 'hoge_block' }
    building      { 'hoge_building' }
    tel           { '09012345678' }
    token         { 'tokabcdefghijk00000000000000000' }
  end
end
