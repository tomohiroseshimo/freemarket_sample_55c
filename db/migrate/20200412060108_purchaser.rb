class Purchaser < ActiveRecord::Migration[5.2]
  def change
      add_column :items, :purchaser_id, :integer 
  end
end
