class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :attraction, null: false, foreign_key: true
      t.string :client_phone
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
