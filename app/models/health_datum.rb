class HealthDatum < ActiveRecord::Base
  attr_accessible :blood_pressure, :cigs_per_day, :coughs_per_day, :height, :respitory_rate, :weight
end
