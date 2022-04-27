# README

## usersテーブル

| Column             | Type   | Options
| ------------------ | ------ | ---------------------
| email              | string | unique: true , null: false
| encrypted_password | string | null: false
| nickname           | string | null: false
| last_name          | string | null: false
| first_name         | string | null: false
| last_name_kana     | string | null: false
| first_name_kana    | string | null: false
| birth_date         | date   | null: false

### Association

- has_many :items
- has_many :orders


## ordersテーブル

| Column           | Type       | Options
| ---------------- | ---------- | ------------------------------
| item             | references | null: false, foreign_key: true
| user             | references | null: false, foreign_key: true

### Association

- belongs_to :item
- belongs_to :user
- has_one :shipping_address


## shipping_addressesテーブル

| Column        | Type       | Options
| ------------- | ---------- | ------------------------------
| postal_code   | string     | null: false
| prefecture_id | integer    | null: false
| city          | string     | null: false 
| address       | string     | null: false 
| building      | string     | 
| phone_number  | string     | null: false
| order         | references | null: false, foreign_key: true

### Association

- belongs_to :orders

## itemsテーブル

| Column                 | Type       | Options
| ---------------------- | ---------- | ------------------------------
| name                   | string     | null: false
| explain                | text       | null: false
| category_id            | integer    | null: false
| sales_status_id        | integer    | null: false
| shipping_fee_status_id | integer    | null: false
| prefecture_id          | integer    | null: false
| scheduled_delivery_id  | integer    | null: false
| price                  | integer    | null: false
| user                   | references | null: false, foreign_key: true

### Association

- belongs_to :user
- has_one :order

