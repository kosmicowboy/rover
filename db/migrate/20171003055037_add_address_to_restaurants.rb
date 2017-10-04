class AddAddressToRestaurants < ActiveRecord::Migration[5.1]
  def change
    change_table :restaurants do |t|
      t.string :street_address
      t.string :city
      t.string :zip
    end
  end
end
