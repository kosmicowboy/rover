class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :source_url
      t.string :image
      t.string :lat
      t.string :long
    end
  end
end
