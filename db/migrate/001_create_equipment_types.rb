class CreateEquipmentTypes < ActiveRecord::Migration
	def change
		create_table :equipment_types do |t|
			t.string :name
		end
	end
end