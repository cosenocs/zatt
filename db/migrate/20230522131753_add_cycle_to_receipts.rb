class AddCycleToReceipts < ActiveRecord::Migration[7.0]
  def change
    add_column :receipts, :cycle, :integer, default: 1
  end
end
