class AddQuantity2ToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :quantity, :integer
  end
end
