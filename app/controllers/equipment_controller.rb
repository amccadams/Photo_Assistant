
class EquipmentController
  # include Formatter

  # attr_accessor :equipment_params

  def initialize equipment_params
    @equipment_params = equipment_params
  end
  
  # def initialize params
  #   @params = params  
  # end

def index
  # if @params[:equipment][:name] == "p"
  #     photo_shoot = PhotoShootController.new(@params)
  #     photo_shoot.index
  #   else
      equipments = Equipment.all
      equipments.each_with_index do |equipment, i|
        puts "#{i+1}. #{equipment.name}"
      end
    # end
  end

  def create
    # if @params[:equipment][:name] == "p"
    #   photo_shoot = PhotoShootController.new(@params)
    #   photo_shoot.create
    # else
      equipments = Equipment.new(@equipment_params[:equipment])
      if equipments.save
        puts "Success!"
      else
        puts "Failure :( #{equipments.errors.full_messages.join(", ")}"
      end
    # end
  end

  def destroy
    #  if @params[:equipment][:name] == "p"
    #   photo_shoot = PhotoShootController.new(@params)
    #   photo_shoot.destroy
    # else
      matching_equipments = Equipment.where(name: @equipment_params[:equipment][:name]).all
      matching_equipments.each do |equipment|
        equipment.destroy
      end
    # end
  end

end