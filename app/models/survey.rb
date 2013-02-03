class Survey < ActiveRecord::Base
  attr_accessible :address, :clothing, :contacted, :continue_visiting, :flashlights, :food, :gas, :heat, :medical, :misc, :power, :urgency, :water, :latitude, :longitude
  geocoded_by :address 
  after_validation :geocode 
  #reverse_geocoded_by :latitude, :longitude
  #after_validation :reverse_geocode  # auto-fetch address
end
