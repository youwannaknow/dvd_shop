class Rental < ActiveRecord::Base
	validates :rental_id, :movie_id, :date_of_rental, :status, :customer_id, :presence => true
	belongs_to :customer
	has_many :movie
	belongs_to :transaction
	
end
