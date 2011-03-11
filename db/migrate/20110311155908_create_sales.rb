class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.integer :sales_id
      t.integer :customer_id
      t.date :date_of_sales
      t.integer :movie_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
