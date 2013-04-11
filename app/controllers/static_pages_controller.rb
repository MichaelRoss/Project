class StaticPagesController < ApplicationController

def home
	@Health_Data = HealthDatum.last
	@panic_alarm = PanicAlarm.new
	@gp_diagnosis = GpDiagnosis.last
end

def help
end

def about
end

def contact
end

end
