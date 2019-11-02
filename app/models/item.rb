class Item < ApplicationRecord
  # belongs_to :user
  # belongs_to :buyer, class_name: "User"
  # belongs_to :saler, class_name: "User"
  has_many :items_categories
  has_many :images
  accepts_nested_attributes_for :images
  has_many :categories, through: :items_categories

end
