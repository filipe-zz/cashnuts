class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.float :price
      t.references :product_category
      t.references :distributor

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
