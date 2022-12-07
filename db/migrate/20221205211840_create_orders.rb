class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.boolean :complete
      t.integer :quantity
      t.timestamps
    end
  end
end
