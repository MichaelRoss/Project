class StaticPagesController < ApplicationController
  def home
  	@Health_Data = HealthDatum.last
end

  def help
  end

  def about
  end

  def contact
  end
end
