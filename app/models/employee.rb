class Employee < ApplicationRecord
  has_many :vouchers, class_name: "Voucher", foreign_key: "debit_id"
  has_many :vouchers, class_name: "Voucher", foreign_key: "credit_id"
end
