class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :zip
      t.string :description
      t.string :website
      t.string :source_url
      t.string :image
      t.string :lat
      t.string :long
    end
  end
end
