# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| age                | string  | null: false |
| gender_id          | integer | null: false |
| style              | string  | null: false |
| favorite           | string  | null: false |

### Association

##  beer_barsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| item_name        | string     | null: false                    |
| description      | text       | null: false                    |
| category_id      | integer    | null: false                    |
| postage_id       | integer    | null: false                    |
| condition_id     | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| scheduled_day_id | integer    | null: false                    |
| price            | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

## brewerys テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false  foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

## tweets テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| house_number  | string     | null: false                    |
| building      | string     |                                |
| phone_number  | string     | null: false                    |
| buy           | references | null: false, foreign_key: true |

### Association
