# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | nill: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kane     | string | null: false |
| birthday           | date   | null: false |

### Association

* has_many :items
* has_many :buyers


## items テーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| product      | string     | null: false       |
| description  | text       | null: false       |
| category_id  | integer    | null: false       |
| condition_id | integer    | null: false       |
| ship_base_id | integer    | null: false       |
| ship_city_id | integer    | null: false       |
| ship_date_id | integer    | null: false       |
| price        | integer    | null: false       |
| user         | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :buyer

## buyers テーブル

| Column    | Type       | Options           |
| --------- | ---------- | ----------------- |
| user      | references | foreign_key: true |
| item      | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :shipping_address

## shipping_addresses テーブル

| Column        | Type       | Options                   |
| ------------- | ---------- | ------------------------- |
| postal_code   | string     | null: false               |
| prefecture_id | integer    | null: false               |
| municipality  | string     | null: false               |
| address       | string     | null: false               |
| building_name | string     |                           |
| phone_number  | string     | null: false, unique: true |
| buyer         | references | foreign_key: true         |

### Association

- belongs_to :buyer