class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :amount
      t.text :detail
      t.boolean :seccess,  :default => false
      t.references :user
      t.references :product

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
