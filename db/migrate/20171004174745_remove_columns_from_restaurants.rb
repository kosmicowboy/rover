class RemoveColumnsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :lat
  end
end
