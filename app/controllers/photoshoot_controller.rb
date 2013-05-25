class PhotoShootController
  # include Formatter
  
  def initialize photoshoot_params
    @photoshoot_params = photoshoot_params  
  end

  def index
    photoshoots = PhotoShoot.all
    photoshoots.each_with_index do |photoshoot, i|
      puts "#{i+1}. #{photoshoot.name}"
    end
  end

  def create
    photoshoots = PhotoShoot.new(@photoshoot_params[:photoshoot])
    if photoshoots.save
      puts "Success!"
    else
      puts "Failure :( #{photoshoots.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_photoshoots = PhotoShoot.where(name: @photoshoot_params[:photoshoot][:name]).all
    matching_photoshoots.each do |photoshoot|
      photoshoot.destroy
    end
  end

end