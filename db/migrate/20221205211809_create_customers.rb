class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :name
      t.string :address
      t.integer :phone 
    end
  end
end
