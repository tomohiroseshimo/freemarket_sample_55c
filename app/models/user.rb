class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nickname, presence: true
  validates :email, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birthdate_year, presence: true
  validates :birthdate_month, presence: true
  validates :birthdate_day, presence: true
  validates :phone_number, presence: true
  validates :address_last_name, presence: true
  validates :address_first_name, presence: true
  validates :address_last_name_kana, presence: true
  validates :address_first_name_kana, presence: true
  validates :address_number, presence: true
  validates :address_prefecture, presence: true
  validates :address_name, presence: true
  validates :address_block, presence: true
  validates :encrypted_password, presence: true
  validates :card_number, presence: true
  validates :security_number, presence: true
  validates :effectiveness_month, presence: true
  validates :effectiveness_year, presence: true
  validates :authentication_number, presence: true
  

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
