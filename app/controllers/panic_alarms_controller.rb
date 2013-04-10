class PanicAlarmsController < ApplicationController
  # GET /panic_alarms
  # GET /panic_alarms.json
  def index
    @panic_alarms = PanicAlarm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @panic_alarms }
    end
  end

  # GET /panic_alarms/1
  # GET /panic_alarms/1.json
  def show
    @panic_alarm = PanicAlarm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @panic_alarm }
    end
  end

  # GET /panic_alarms/new
  # GET /panic_alarms/new.json
  def new
    @panic_alarm = PanicAlarm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @panic_alarm }
    end
  end

  # POST /panic_alarms
  # POST /panic_alarms.json
  def create
    @panic_alarm = PanicAlarm.new(params[:panic_alarm])

    respond_to do |format|
      if @panic_alarm.save
        format.html { redirect_to @panic_alarm, notice: 'Panic alarm was successfully created.' }
        format.json { render json: @panic_alarm, status: :created, location: @panic_alarm }
      else
        format.html { render action: "new" }
        format.json { render json: @panic_alarm.errors, status: :unprocessable_entity }
      end
    end
  end

end
