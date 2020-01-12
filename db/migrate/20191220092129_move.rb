class Move < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping, :varchar
  end
end
