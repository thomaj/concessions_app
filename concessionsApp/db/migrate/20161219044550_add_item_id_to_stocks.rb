class AddItemIdToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :item_id, :integer
  end
end
