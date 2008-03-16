class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.references :client
      t.references :product
      t.date :date
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
