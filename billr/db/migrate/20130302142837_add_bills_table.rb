class AddBillsTable < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.integer :day
      t.integer :user_id
      t.timestamps
    end
  end
end
