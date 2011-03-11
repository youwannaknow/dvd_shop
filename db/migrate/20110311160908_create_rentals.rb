class CreateRentals < ActiveRecord::Migration
  def self.up
    create_table :rentals do |t|
      t.integer :rental_id
      t.integer :movie_id
      t.date :date_of_rental
      t.string :status
      t.integer :customer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rentals
  end
end
