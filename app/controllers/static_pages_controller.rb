class StaticPagesController < ApplicationController

skip_before_filter  :check_authorization

def home
	@Health_Data = HealthDatum.last
	@panic_alarm = PanicAlarm.new
	@gp_diagnosis = GpDiagnosis.last

	if current_user.blank?
		redirect_to new_session_path
	end
end

def help
end

def about
end

def contact
end

end
