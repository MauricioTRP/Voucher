# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AccountType.create([
  { category: 'Expenditure' },
  { category: 'Income' },
  { category: 'Assets' },
  { category: 'Liabilities' }
])

Account.create([
  { code: 110001, name: 'Capital Account', account_type_id: 4 },
  { code: 631001, name: 'Cash Account', account_type_id: 3 },
  { code: 632001, name: 'Bank Account', account_type_id: 3 },
  { code: 711001, name: 'Purchases', account_type_id: 1 },
  { code: 711003, name: 'Carriage Inwards', account_type_id: 1 },
  { code: 712002, name: 'Rent', account_type_id: 1 },
  { code: 711011, name: 'Wages', account_type_id: 1 }
])

Employee.create([
  { first_name: 'Tulio Triviño', last_name: 'Triviño', email: 'tulio@trivino.com' },
  { first_name: 'Juan Carlos', last_name: 'Bodoque', email: 'juan@carlos.com' },
  { first_name: 'Patana', last_name: 'Tufiño', email: 'patana@tufino.com' },
  { first_name: 'Mario', last_name: 'Hugo', email: 'mario@hugo.com' }
])
