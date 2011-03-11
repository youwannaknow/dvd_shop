class Movie < ActiveRecord::Base
	validates :title, :year_of_release, :type, :category_id, :presence => true
	belongs_to :sale
	belongs_to :rental
	belongs_to :category
end
