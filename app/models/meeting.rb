class Meeting < ActiveRecord::Base
  attr_accessible :date, :notes, :requested_by, :response, :time, :with
end
