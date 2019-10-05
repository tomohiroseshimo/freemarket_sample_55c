class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    t.string  :name,      null: false
    t.string  :image,     null: false
    t.string  :category,  null: false
    t.string  :brand
    t.string  :size,      null: false
    t.string  :condition, null: false
    t.string  :cost,      null: false
    t.string  :shipping,  null: false
    t.string  :area,      null: false
    t.string  :date,      null: false
    t.integer :price,    null: false
      t.timestamps
    end
  end
end
