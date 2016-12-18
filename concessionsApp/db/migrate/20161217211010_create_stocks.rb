class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :location_id
      t.integer :number_in_stock
      t.boolean :available

      t.timestamps null: false
    end
  end
end
