class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :customer_id 
      t.string :name, 
      t.string :surname
      t.integer :cell_no
      t.text :address
      t.date :dob
      t.integer :alternate_no
      t.string :username
      t.string :password
      t.string :e_mail
      t.integer :rental_id
      
      

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
