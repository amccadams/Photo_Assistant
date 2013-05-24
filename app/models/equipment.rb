class Equipment < ActiveRecord::Base
  self.table_name = :equipments
  validates_uniqueness_of :name, message: "must be unique"
  attr_accessible :name, :serial, :equipment_type_id

# def add_camera
# 	camera = 
# 	puts "Add a Camera Body to equipment inventory"
# 	if user selects :equipment_type_1

# 	then allow  camera (id 1) as input id then allow the user to type in the equipment:name and serial number
# end

end