class CreatePhotoShoot < ActiveRecord::Migration
  def change
    create_table :photo_shoots do |t|
     t.string :name
     t.string :address
     t.string :city
     t.string :state
     t.string :zip
     t.string :phone
     t.string :email
     t.string :date
     t.string :time
   end
  end
end