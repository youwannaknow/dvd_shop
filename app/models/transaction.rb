class Transaction < ActiveRecord::Base
	validates :transaction_id, :transaction_type, :sales_id, :renting_id, :presence => true
end
