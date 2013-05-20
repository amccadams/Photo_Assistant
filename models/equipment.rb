class Equipment < ActiveRecord::Base
	attr_reader :name, :serial, :type_id

	def initialize *args

	end

end