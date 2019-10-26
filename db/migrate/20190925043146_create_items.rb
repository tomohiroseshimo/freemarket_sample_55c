class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,      null: false
      t.text  :description
      t.string  :category
      t.string  :brand
      t.string  :size
      t.string  :condition
      t.string  :cost
      t.string  :shipping
      t.string  :area
      t.string  :date
      t.integer :price
      t.integer :buyer_id
      t.integer :saler_id
      t.timestamps  null: true
    end
  end
end
