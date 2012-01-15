class TravelTypeReference < ActiveRecord::Base
  belongs_to :point
  belongs_to :travelType
end
