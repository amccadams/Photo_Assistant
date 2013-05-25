
class EquipmentController
  # include Formatter

  # attr_accessor :equipment_params

  def initialize equipment_params
    @equipment_params = equipment_params
  end

  def index
      equipments = Equipment.all
      equipments.each_with_index do |equipment, i|
        puts "#{i+1}. #{equipment.name}"
      end
  end

  def create
      equipments = Equipment.new(@equipment_params[:equipment])
      if equipments.save
        puts "Success!"
      else
        puts "Failure :( #{equipments.errors.full_messages.join(", ")}"
      end
  end

  def destroy
      matching_equipments = Equipment.where(name: @equipment_params[:equipment][:name]).all
      matching_equipments.each do |equipment|
        equipment.destroy
      end
  end

end