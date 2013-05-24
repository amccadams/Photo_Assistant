class PhotoAssistantController
  # include Formatter
  
  def initialize params
    # @params = params  
  end

def index
    equipments = Equipment.all
    equipments.each_with_index do |equipment, i|
      puts "#{i+1}. #{equipment.name}"
    end
  end

  def create
    equipments = Equipment.new(name: equipments)
    if equipments.save
      puts "Success!"
    else
      puts "Failure :( #{equipments.errors.full_messages.join(", ")}"
    end
  end




  # def create
  #   equipment = Equipment.new(params[:equipment])
  #   if equipment.save 
  #     puts 'Success!'
  #   else
  #     puts 'Failure: #{equipment.errors.full_messages.join (",")}'
  #   end
  # end
 
 
end