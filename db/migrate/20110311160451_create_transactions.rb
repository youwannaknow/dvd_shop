class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :transactionid_id
      t.integer :transaction_type
      t.integer :sales_id
      t.integer :renting_id

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
