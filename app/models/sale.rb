class Sale < ActiveRecord::Base
	validates :sales_id, :customer_id, :date_of_sales, :movie_id, :presence=> true
	belongs_to :customer
	has_many :movie
	belongs_to :transaction
	
end
