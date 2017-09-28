class Restaurant < ApplicationRecord
  validates :name, :cuisine, :longitude, :latitude, {presence: true}
    has_many :photos
    has_many :users, through: :photos
end
