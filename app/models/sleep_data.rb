class SleepData < ActiveRecord::Base
  attr_accessible :end_time, :mood, :notes, :sleepquality, :start_time, :timeinbed
end
