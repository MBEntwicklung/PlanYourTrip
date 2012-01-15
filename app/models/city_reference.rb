class CityReference < ActiveRecord::Base
  belongs_to :point
  belongs_to :city
end
