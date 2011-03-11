class Category < ActiveRecord::Base
	validates :category_id, :name, :rating, :presence => true
	
end
