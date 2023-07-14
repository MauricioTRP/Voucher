class CreateSupports < ActiveRecord::Migration[7.0]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :description
      t.decimal :ammount

      t.timestamps
    end
  end
end
