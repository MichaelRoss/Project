class SensorDataController < ApplicationController
  def index
  	@sensor_data = SensorData.all 

  end
end
