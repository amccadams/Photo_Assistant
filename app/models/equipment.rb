class Equipment < ActiveRecord::Base
  self.table_name = :equipments
  validates_uniqueness_of :name, message: "must be unique"
  attr_accessible :name, :serial, :equipment_type_id


end