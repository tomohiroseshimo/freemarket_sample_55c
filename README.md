# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# freemarket_sample_55c DB設計
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|string|null: false|
|image|string|null: false|
|category|string|null: false|
|brand|string||
|size|string|null: false|
|condition|string|null: false|
|cost|string|null: false|
|shipping|string|null: false|
|area|string|null: false|
|date|string|null: false|
|price|integer|null: false|
### Association
- has_many :items_categories
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|firstname|string|null: false|
|lastname|string|null: false|
|address|string|null: false|
### Association
- has_many :items
- has_many :credits

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|items_id|integer||
### Association
- has_many :items, 
- has_many :items_categories

## items_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|items_id|integer|null: false, foreign_key: true|
|categories_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :categoriey
- belongs_to :item

## creditsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|credit_number|integer|null: false|
|expiry_date|integer|null: false|
|security_code|integer|null: false|
### Association
- belongs_to :user