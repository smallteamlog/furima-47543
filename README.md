## usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| name_kanji_last    | string  | null: false               |
| name_kanji_first   | string  | null: false               |
| name_kana_last     | string  | null: false               |
| name_kana_first    | string  | null: false               |
| birth_date         | date    | null: false               |

### Association

- has_many :items
- has_many :orders

## itemsテーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| explanation            | text       | null: false                    |
| category_id            | integer    | null: false                    |
| situation_id           | integer    | null: false                    |
| shipping_id            | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| days_until_shipping_id | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

- belongs_to :user
- has_one :order

## ordersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :item
- has_one :destination

## destinationテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| post_code        | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    | 
| street           | string     | null: false                    |
| building_name    | string     |                                |
| phone_number     | string     | null: false                    | 
| order            | references | null: false, foreign_key: true | 

- belongs_to :order