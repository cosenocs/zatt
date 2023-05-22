class AddAttractionReferencesAndRemoveAtrractionColumnFromReceipts < ActiveRecord::Migration[7.0]
  def change
    remove_column :receipts, :attraction, :string

    add_column :receipts, :attraction_id, :integer
  end
end
