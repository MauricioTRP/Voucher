class AddEmployeeToVoucher < ActiveRecord::Migration[7.0]
  def change
    add_reference :vouchers, :prepared, foreign_key: { to_table: :employees }
    add_reference :vouchers, :authorized, foreign_key: { to_table: :employees }
  end
end
