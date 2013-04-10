class GpDiagnosesController < ApplicationController
  # GET /gp_diagnoses
  # GET /gp_diagnoses.json
  def index
    @gp_diagnoses = GpDiagnosis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gp_diagnoses }
    end
  end

  # GET /gp_diagnoses/1
  # GET /gp_diagnoses/1.json
  def show
    @gp_diagnosis = GpDiagnosis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gp_diagnosis }
    end
  end

  # GET /gp_diagnoses/new
  # GET /gp_diagnoses/new.json
  def new
    @gp_diagnosis = GpDiagnosis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gp_diagnosis }
    end
  end

  # POST /gp_diagnoses
  # POST /gp_diagnoses.json
  def create
    @gp_diagnosis = GpDiagnosis.new(params[:gp_diagnosis])

    respond_to do |format|
      if @gp_diagnosis.save
        format.html { redirect_to @gp_diagnosis, notice: 'Gp diagnosis was successfully created.' }
        format.json { render json: @gp_diagnosis, status: :created, location: @gp_diagnosis }
      else
        format.html { render action: "new" }
        format.json { render json: @gp_diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
