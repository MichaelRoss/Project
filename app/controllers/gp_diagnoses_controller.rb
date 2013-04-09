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

  # GET /gp_diagnoses/1/edit
  def edit
    @gp_diagnosis = GpDiagnosis.find(params[:id])
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

  # PUT /gp_diagnoses/1
  # PUT /gp_diagnoses/1.json
  def update
    @gp_diagnosis = GpDiagnosis.find(params[:id])

    respond_to do |format|
      if @gp_diagnosis.update_attributes(params[:gp_diagnosis])
        format.html { redirect_to @gp_diagnosis, notice: 'Gp diagnosis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gp_diagnosis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gp_diagnoses/1
  # DELETE /gp_diagnoses/1.json
  def destroy
    @gp_diagnosis = GpDiagnosis.find(params[:id])
    @gp_diagnosis.destroy

    respond_to do |format|
      format.html { redirect_to gp_diagnoses_url }
      format.json { head :no_content }
    end
  end
end
