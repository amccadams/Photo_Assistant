class PhotoShoot < ActiveRecord::Base
	attr_reader :name, :address, :city, :state, :zip, :phone, :email, :date, :time
	self.table_name = :photo_shoots
# def 
# end
end