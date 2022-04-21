# README

## usersテーブル

| Column             | Type   | Options
| ------------------ | ------ | ---------------------
| email              | string | null: false , UNI
| encrypted_password | string | null: false
| nickname           | string | null: false
| last-name          | text   | null: false
| first-name         | text   | null: false
| last-name-kana     | text   | null: false
| first-name-kana    | text   | null: false
| birth_date         | text   | null: false

## ordersテーブル

| Column    | Type       | Options
| --------- | ---------- | ------------------------------
| address   | text       | null: false
| card      | text       | null: false
| item      | references | null: false, foreign_key: true
| user      | references | null: false, foreign_key: true

## itemsテーブル

| Column     | Type       | Options
| ---------- | ---------- | ------------------------------
| name       | string     | null: false
| category   | text       | null: false,
| price      | text       | null: false
| user       | references | null: false, foreign_key: true
