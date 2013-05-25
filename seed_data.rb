require_relative 'bootstrap_ar'
connect_to 'development'
#I don't know if the above line is correct - It is what EB had#

EquipmentType.create( name: 'Camera Body')
EquipmentType.create( name: 'Lens')
EquipmentType.create( name: 'Lighting')
EquipmentType.create( name: 'Support')
EquipmentType.create( name: 'Accessories')