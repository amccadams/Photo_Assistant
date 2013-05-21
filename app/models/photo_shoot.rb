class PhotoShoot < ActiveRecord::Base
	attr_reader :name, :address, :city, :state, :zip, :phone, :email, :date, :time


end