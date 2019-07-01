class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :country_id
      t.text :description
      t.integer :favorites

      t.timestamps
    end
  end
end
