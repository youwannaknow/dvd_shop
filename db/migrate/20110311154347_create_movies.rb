class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.integer :movie_id
      t.string :title
      t.string :year_of_realease
      t.string :type
      t.string :starring
      t.string :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
