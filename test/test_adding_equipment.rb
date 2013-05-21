require_relative 'test_helper'

class TestAddingEquipment <MiniTest::Unit::TestCase
  include DatabaseCleaner 

  def test_add_equipment_type
  	equipment = Equipment.new(1, "Canon 5D Mark III", "145TG4678")
  	assert_equal(1, "Canon 5D Mark III", equipment.name)
  end
end