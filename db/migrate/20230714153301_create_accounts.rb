class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :code
      t.string :name
      t.references :account_type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :accounts, :code, unique: true
  end
end
