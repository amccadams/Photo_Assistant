class PhotoAssistantController
  # include Formatter
  
  def initialize params
    @params = params  
  end

  def create
    equipment = Equipment.new(params[:equipment])
    if equipment.save 
      puts 'Success!'
    else
      puts 'Failure: #{equipment.errors.full_messages.join (",")}'
    end
  end
 
 
end