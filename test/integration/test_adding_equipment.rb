require_relative 'test/test_helper'

class TestAddingEquipment <MiniTest::Unit::TestCase
  include DatabaseCleaner #what is this for?  

  def test_add_equipment_type
  	equipment = Equipment.new(1, "Canon SLR135", "145TG4678")
  	assert_equal("Canon SLR135", equipment.name)
  end
end