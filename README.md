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
| birth_date         | integer | null: false               |

### Association

- has_many :items
- has_many :comments
- has_one : destination

## itemsテーブル

| Column              | Type       | Options
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| explanation         | text       | null: false                    |
| category            | string     | null: false                    |
| situation           | string     | null: false                    |
| shipping            | string     | null: false                    |
| area                | string     | null: false                    |
| days_until_shipping | string     | null: false                    |
| price               | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments
- has_one :destination

## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| item    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

- belongs_to :item
- belongs_to :user

## destinationテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | string     | null: false                    |
| prefecture    | string     | null: false                    |  
| city          | string     | null: false                    |
| street        | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    | 
| item          | references | null: false, foreign_key: true | 
| user          | references | null: false, foreign_key: true | 

- belongs_to :item
- belongs_to :user