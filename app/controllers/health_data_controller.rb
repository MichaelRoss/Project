class HealthDataController < ApplicationController
  # GET /health_data
  # GET /health_data.json
  def index
    @health_data = HealthDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @health_data }
    end
  end

  # GET /health_data/1
  # GET /health_data/1.json
  def show
    @health_datum = HealthDatum.find(params[:id])

    @cigs_per_day = CigsPerDay.last
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @health_datum }
    end
  end

  # GET /health_data/new
  # GET /health_data/new.json
  def new
    @health_datum = HealthDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @health_datum }
    end
  end

  # POST /health_data
  # POST /health_data.json
  def create
    @health_datum = HealthDatum.new(params[:health_datum])

    respond_to do |format|
      if @health_datum.save
        format.html { redirect_to @health_datum, notice: 'Health datum was successfully created.' }
        format.json { render json: @health_datum, status: :created, location: @health_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @health_datum.errors, status: :unprocessable_entity }
      end
    end
  end
end
