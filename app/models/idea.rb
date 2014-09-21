class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  def encrypt_description
    description.reverse.downcase
  end

  def autorin
   Faker::Name.name
  end

end
