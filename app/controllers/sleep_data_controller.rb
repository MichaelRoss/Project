class SleepDataController < ApplicationController
   def index
   		@sd = SleepData.where('start_time >= ?', 1.week.ago).paginate(:page => params[:page], :per_page => 1,)
  		@graph_data = SleepData.where('start_time >= ?', 1.week.ago)
  end
end
