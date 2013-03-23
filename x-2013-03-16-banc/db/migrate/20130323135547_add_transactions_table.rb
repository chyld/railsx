class AddTransactionsTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :memo
      t.timestamps
    end
  end
end
