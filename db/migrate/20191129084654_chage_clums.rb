class ChageClums < ActiveRecord::Migration[5.2]
  def up
    change_table :items do |t|
     t.change :date, :integer
     t.change :area, :integer
     t.change :cost, :integer
     t.change :condition, :integer
     t.change :category, :integer
     t.change :size, :string
     t.change :shipping, :string
    end
  end

  def down
    t.change :date, :string
    t.change :area, :string
    t.change :cost, :string
    t.change :condition, :string
    t.change :category, :string
    t.change :size, :string, null: false
    t.change :shipping, :string, null: false
  end
end
