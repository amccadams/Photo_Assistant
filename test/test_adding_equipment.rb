require_relative 'test_helper'

class TestAddingEquipment <MiniTest::Unit::TestCase
  include DatabaseCleaner 

  # def test_add_camerabody_type
  # 	equipment = EquipmentType.new(name: "5DMarkIII")
  # 	equipment.save!
  # 	type = EquipmentType.last
  # 	assert_equal(name: "5DMarkIII")
  # 	# assert_equal("5D Mark III")
  # end


#Ask ELiza about this test#
  def test_add_an_equipment
  	equipment = Equipment.new( name: "Nikon", serial: "12345tre")
  	equipment.save!
  	equip = Equipment.last
  	assert_equal("Nikon", equip[:name])
  end

  # def test_add_lens_type
  # 	equipment= Equipment.new(type_id:2, name:"Canon 24-105mm", "34987662")
  # 	assert_equal(2, equipment.type_id, equipment.serial)
  # end
end