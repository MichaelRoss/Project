class GpsDataController < ApplicationController
 def index
   @g = GpsData.all
  end
end