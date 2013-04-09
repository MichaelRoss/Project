class GpsData < ActiveRecord::Base
  attr_accessible :lat, :lng, :time
end
