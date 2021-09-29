# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| nickname           | string   | null: false |
| age_id             | integer  |             |
| gender_id          | integer  |             |
| favorite           | string   | null: false |

### Association

- has_many :posts

## posts テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| beer_name      | string     | null: false                    |
| style          | string     | null: false                    |
| description    | text       | null: false                    |
| assessment_id  | integer    | null: false                    |
| bar_name       | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
