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

#freemarket_sample_55c DB設計

##usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|firstname|string|null: false|
|lastname|string|null: false|
|address|string|null: false|

###Association
has_many :items
has_many :items_users

##itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
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

###Association
belongs_to :user
has_many :items_users

##items_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|items_id|references|null: false, foreign_key: true|

###Association
belongs_to :user
belongs_to :item
