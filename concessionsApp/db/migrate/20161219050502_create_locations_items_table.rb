class CreateLocationsItemsTable < ActiveRecord::Migration
  def change
    create_table :locations_items, id: false do |t|
      t.integer :location_id
      t.integer :item_id
    end

    add_index :locations_items, :location_id
    add_index :locations_items, :item_id
  end
end
