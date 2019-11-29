class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name, null: false
      t.text  :description
      t.integer  :category
      t.string  :brand
      t.string  :size
      t.integer  :condition
      t.integer  :cost
      t.string  :shipping
      t.integer  :area
      t.integer  :date
      t.integer :price
      t.references :user
      t.timestamps  null: true
    end
  end
end
