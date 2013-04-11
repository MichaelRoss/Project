class FamilyController < ApplicationController

	def instructions
		@health_datum = HealthDatum.last
		@gp_diagnosis = GpDiagnosis.last
		@sw_diary = SwDiary.last
	end

	def movements
		 @g = GpsData.all
	end
end
