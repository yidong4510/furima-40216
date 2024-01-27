## users テーブル ##

| Column             | Type   | Options     |
|--------------------|--------|-------------|
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |
| kana_name          | string | null: false |
| birthday           | date   | null: false |

### Association
- has_many :items
- has_one :cartItem


## itemsテーブル ##
| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| name        | string     | null: false                    |
| description | string     | null: false                    |
| category    | string     | null: false                    |
| method      | string     | null: false                    |
| source      | string     | null: false                    |
| condition   | string     | null: false                    |
| day         | string     | null: false                    |
| price       | integer    | null: false                    |
| image       | string     | null: false                    |
| user_id     | references | null: false, foreign_key: true |

### Association ###
- belongs_to :user
- has_one :cartItem


## CartItemsテーブル ##
| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| user_id | references | null: false, foreign_key: true |
| item_id | references | null: false, foreign_key: true |

### Association ###
- belongs_to :user
- belongs_to :item


## Addressテーブル ##
| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| post_code   | string     | null: false                    |
| prefecture  | string     | null: false                    |
| city        | string     | null: false                    |
| building    | string     | null: false                    |
| tel         | string     | null: false                    |
| cartItem_id | references | null: false, foreign_key: true |

### Association ###
- belongs_to :cartItem