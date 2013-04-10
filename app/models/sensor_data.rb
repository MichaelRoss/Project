class SensorData < ActiveRecord::Base
  attr_accessible :sensor, :sensor_name, :state, :time
end
