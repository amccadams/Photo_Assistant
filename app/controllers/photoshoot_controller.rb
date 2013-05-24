class PhotoShootController
  # include Formatter
  
  def initialize params
    @params = params  
  end

def index
    photoshoots = PhotoShoot.all
    photoshoots.each_with_index do |photos, i|
      puts "#{i+1}. #{photos.name}"
    end
  end

  def create
    photoshoots = PhotoShoot.new(@params[:photo_shoot])
    if photoshoots.save
      puts "Success!"
    else
      puts "Failure :( #{photoshoots.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_equipments = PhotoShoot.where(name: @params[:photo_shoot][:name]).all
    matching_equipments.each do |photoshoot|
      photoshoot.destroy
    end
  end

end