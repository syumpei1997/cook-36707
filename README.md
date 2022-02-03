# README

# users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

# Association

- has_many :items

# items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| image              | string | null: false |
| image_name         | string | null: false |
| material           | string | null: false |
| quantity           | string | null: false |
| process            | text   | null: false |
| ganre_id           | integer | null: false, dafault"4"  |
| user               | references | null: false, foreign_key: true |



# Association

- belongs_to :user