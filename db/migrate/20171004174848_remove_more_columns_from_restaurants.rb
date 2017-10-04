class RemoveMoreColumnsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :long
    remove_column :restaurants, :zip
  end
end
