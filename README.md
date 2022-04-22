# README

## usersテーブル

| Column             | Type   | Options
| ------------------ | ------ | ---------------------
| email              | string | unique: true , UNI
| encrypted_password | string | null: false
| nickname           | string | null: false
| last_name          | string | null: false
| first_name         | string | null: false
| last_name_kana     | string | null: false
| firstna_me_kana    | string | null: false
| birth_date         | date   | null: false

## ordersテーブル

| Column           | Type       | Options
| ---------------- | ---------- | ------------------------------
| shipping_address | references | null: false, foreign_key: true
| item             | references | null: false, foreign_key: true
| user             | references | null: false, foreign_key: true

## shipping_addressesテーブル

| Column        | Type       | Options
| ------------- | ---------- | ------------------------------
| postal_code   | text       | null: false
| prefecture    | text       | null: false
| address       | text       | null: false 
| building      | text       | null: false 
| phone_number  | text       | null: false

## itemsテーブル

| Column              | Type       | Options
| ------------------- | ---------- | ------------------------------
| name                | string     | null: false
| category            | text       | null: false
| explain             | text       | null: false
| sales_status        | text       | null: false
| shipping_fee_status | text       | null: false
| prefecture          | text       | null: false
| scheduled_delivery  | text       | null: false
| price               | integer    | null: false
| add_tax             | integer    | null: false
| profit              | integer    | null: false
| user                | references | null: false, foreign_key: true