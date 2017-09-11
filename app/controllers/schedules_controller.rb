class SchedulesController < ApplicationController

  before_action :authorize
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  
  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"distribution.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
     
  end
  def import
    Schedule.import(params[:file])
    redirect_to root_url, notice: "Data Imported!"
  end
  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.DistSum = (@schedule.January + @schedule.February + @schedule.March + @schedule.April + @schedule.May + @schedule.June + @schedule.July + @schedule.August + @schedule.September + @schedule.October + @schedule.November + @schedule.December).round(2)
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    @schedule.DistSum = (@schedule.January + @schedule.February + @schedule.March + @schedule.April + @schedule.May + @schedule.June + @schedule.July + @schedule.August + @schedule.September + @schedule.October + @schedule.November + @schedule.December).round(2)

    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:property, :proj_id, :distributing, :January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December, :DistSum, :equity, :ROI)
    end
end
