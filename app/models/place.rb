class Place < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :address, :description
  validates_length_of :name, minimum: 4
end
