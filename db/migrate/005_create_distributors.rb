class CreateDistributors < ActiveRecord::Migration
  def self.up
    create_table :distributors do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :phone
      t.string :email
      t.references :city

      t.timestamps
    end
  end

  def self.down
    drop_table :distributors
  end
end
