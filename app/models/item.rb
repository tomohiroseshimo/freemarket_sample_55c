class Item < ApplicationRecord
  belongs_to :user
  belongs_to :buyer, class_name: "User"
  belongs_to :saler, class_name: "User"
end
