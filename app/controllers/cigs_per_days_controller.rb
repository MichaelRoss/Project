class CigsPerDaysController < ApplicationController
  # GET /cigs_per_days
  # GET /cigs_per_days.json
  def index
    @cigs_per_days = CigsPerDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cigs_per_days }
    end
  end

  # GET /cigs_per_days/1
  # GET /cigs_per_days/1.json
  def show
    @cigs_per_day = CigsPerDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cigs_per_day }
    end
  end

  # GET /cigs_per_days/new
  # GET /cigs_per_days/new.json
  def new
    @cigs_per_day = CigsPerDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cigs_per_day }
    end
  end

  # GET /cigs_per_days/1/edit
  def edit
    @cigs_per_day = CigsPerDay.find(params[:id])
  end

  # POST /cigs_per_days
  # POST /cigs_per_days.json
  def create
    @cigs_per_day = CigsPerDay.new(params[:cigs_per_day])

    respond_to do |format|
      if @cigs_per_day.save
        format.html { redirect_to @cigs_per_day, notice: 'Cigs per day was successfully created.' }
        format.json { render json: @cigs_per_day, status: :created, location: @cigs_per_day }
      else
        format.html { render action: "new" }
        format.json { render json: @cigs_per_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cigs_per_days/1
  # PUT /cigs_per_days/1.json
  def update
    @cigs_per_day = CigsPerDay.find(params[:id])

    respond_to do |format|
      if @cigs_per_day.update_attributes(params[:cigs_per_day])
        format.html { redirect_to @cigs_per_day, notice: 'Cigs per day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cigs_per_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cigs_per_days/1
  # DELETE /cigs_per_days/1.json
  def destroy
    @cigs_per_day = CigsPerDay.find(params[:id])
    @cigs_per_day.destroy

    respond_to do |format|
      format.html { redirect_to cigs_per_days_url }
      format.json { head :no_content }
    end
  end
end
