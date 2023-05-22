class AddByCashPaymentAndCardPaymentToReceipts < ActiveRecord::Migration[7.0]
  def change
    add_column :receipts, :cash_pay, :integer, default: 0
    add_column :receipts, :card_pay, :integer, default: 0
  end
end
