class Customer < ActiveRecord::Base
	validates :name, :surname, :cell_no, :dob, :alternative_no, :username, :password, :e_mail,  :presence=> true
	validates :cell_no, :numericality=>true
	validates :e_mail, :format=> /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/
	validates_confirmation_of :username, :password
	has_many :sale
	has_many :rental
end
