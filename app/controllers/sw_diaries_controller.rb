class SwDiariesController < ApplicationController
  # GET /sw_diaries
  # GET /sw_diaries.json
  def index
    @sw_diaries = SwDiary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sw_diaries }
    end
  end

  # GET /sw_diaries/1
  # GET /sw_diaries/1.json
  def show
    @sw_diary = SwDiary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sw_diary }
    end
  end

  # GET /sw_diaries/new
  # GET /sw_diaries/new.json
  def new
    @sw_diary = SwDiary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sw_diary }
    end
  end

  # POST /sw_diaries
  # POST /sw_diaries.json
  def create
    @sw_diary = SwDiary.new(params[:sw_diary])

    respond_to do |format|
      if @sw_diary.save
        format.html { redirect_to @sw_diary, notice: 'Sw diary was successfully created.' }
        format.json { render json: @sw_diary, status: :created, location: @sw_diary }
      else
        format.html { render action: "new" }
        format.json { render json: @sw_diary.errors, status: :unprocessable_entity }
      end
    end
  end
end
