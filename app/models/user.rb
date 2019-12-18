class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cards
  
  has_many :items
    #userが買った商品を buyed_items
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
    #userが現在売っている商品を saling_items
  has_many :saling_items, -> {where("buyer_id is NULL")}, foreign_key: "saler_id", class_name: "Item"
    #userが既に売った商品を sold_items
  has_many :sold_items, -> {where("buyer_id is not NULL")}, foreign_key: "saler_id", class_name: "Item"
end
