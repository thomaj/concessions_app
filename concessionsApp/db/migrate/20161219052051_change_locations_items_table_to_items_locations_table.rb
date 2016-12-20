class ChangeLocationsItemsTableToItemsLocationsTable < ActiveRecord::Migration
  def change
    rename_table :locations_items, :items_locations
  end
end
