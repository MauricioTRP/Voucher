class Voucher < ApplicationRecord
  # ========= relations ===========================
  belongs_to :support
  belongs_to :debit, class_name: 'Account', foreign_key: 'debit_id', optional: true
  belongs_to :credit, class_name: 'Account', foreign_key: 'credit_id', optional: true
  belongs_to :prepared, class_name: 'Employee', foreign_key: 'prepared_id', optional: true
  belongs_to :authorized, class_name: 'Employee', foreign_key: 'authorized_id', optional: true
end
