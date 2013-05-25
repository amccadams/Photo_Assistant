class PhotoShoot < ActiveRecord::Base
	self.table_name = :photo_shoots
	  # validates_uniqueness_of :name, message: "must be unique"
	attr_accessible :name, :address, :city, :state, :zip, :phone, :email, :date, :time
	
# def 
# end
end