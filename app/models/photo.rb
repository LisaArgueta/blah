class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  has_many :photos

  mount_uploader :picture, PictureUploader
end
