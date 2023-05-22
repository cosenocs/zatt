class RemoveAttractionForeignKeyFromReceipts < ActiveRecord::Migration[7.0]
  def change
    remove_column :receipts, :attraction_id, :integer
  end
end
