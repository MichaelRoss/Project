class SleepDataController < ApplicationController
   def index
   @sd = SleepData.all
  end
end
