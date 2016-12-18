class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.boolean :open

      t.timestamps null: false
    end
  end
end
