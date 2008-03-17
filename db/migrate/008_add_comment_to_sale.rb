class AddCommentToSale < ActiveRecord::Migration
  def self.up
    add_column :sales, :comment, :text
  end

  def self.down
    remove_column :sales, :comment
  end
end
