## users テーブル ##

| Column                        | Type   | Options                   |
|-------------------------------|--------|---------------------------|
| nickname                      | string | null: false               |
| email                         | string | null: false, unique: true |
| encrypted_password            | string | null: false               |
| last_name                     | string | null: false               |
| first_name                    | string | null: false               |
| kana_last_name                | string | null: false               |
| kana_first_name               | string | null: false               |
| birthday                      | date   | null: false               |

### Association
- has_many :items
- has_many :cart_items


## itemsテーブル ##
| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| name               | string     | null: false                    |
| description        | text       | null: false                    |
| category_id        | integer    | null: false                    |
| shipping_charge_id | integer    | null: false                    |
| prefecture_id      | integer    | null: false                    |
| condition_id       | integer    | null: false                    |
| day_id             | integer    | null: false                    |
| price              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association ###
- belongs_to :user
- has_one :cart_item


## CartItemsテーブル ##
| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association ###
- belongs_to :user
- belongs_to :item
- has_one :address


## Addressテーブル ##
| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| post_code     | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| block         | string     | null: false                    |
| building      | string     |                                |
| tel           | string     | null: false                    |
| cart_item     | references | null: false, foreign_key: true |

### Association ###
- belongs_to :cart_item