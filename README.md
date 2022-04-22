# README

## usersテーブル

| Column             | Type   | Options
| ------------------ | ------ | ---------------------
| email              | string | unique: true , null: false, UNI
| encrypted_password | string | null: false
| nickname           | string | null: false
| last_name          | string | null: false
| first_name         | string | null: false
| last_name_kana     | string | null: false
| firstna_me_kana    | string | null: false
| birth_date         | date   | null: false
| item               | references | null: false, foreign_key: true
| order              | references | null: false, foreign_key: true

## ordersテーブル

| Column           | Type       | Options
| ---------------- | ---------- | ------------------------------
| item             | references | null: false, foreign_key: true
| user             | references | null: false, foreign_key: true

## shipping_addressesテーブル

| Column        | Type       | Options
| ------------- | ---------- | ------------------------------
| postal_code   | text       | null: false
| prefecture_id | integer    | null: false
| city          | text       | null: false 
| address       | text       | null: false 
| building      | text       | null: false 
| phone_number  | text       | null: false
| order         | references | null: false, foreign_key: true

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
| order                  | references | null: false, foreign_key: true