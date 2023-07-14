class AddNatureToVoucher < ActiveRecord::Migration[7.0]
  def change
    add_reference :vouchers, :debit, foreign_key: { to_table: :accounts }
    add_reference :vouchers, :credit, foreign_key: { to_table: :accounts }
  end
end
