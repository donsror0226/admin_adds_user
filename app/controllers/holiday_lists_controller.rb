class HolidayListsController < ApplicationController
  before_action :set_holiday_list, only: [:show, :edit, :update, :destroy]

  # GET /holiday_lists
  # GET /holiday_lists.json
  def index
    @holiday_lists = HolidayList.all
  end

  # GET /holiday_lists/1
  # GET /holiday_lists/1.json
  def show
  end

  # GET /holiday_lists/new
  def new
    @holiday_list = HolidayList.new
  end

  # GET /holiday_lists/1/edit
  def edit
  end

  # POST /holiday_lists
  # POST /holiday_lists.json
  def create
    @holiday_list = HolidayList.new(holiday_list_params)

    respond_to do |format|
      if @holiday_list.save
        format.html { redirect_to @holiday_list, notice: 'Holiday list was successfully created.' }
        format.json { render :show, status: :created, location: @holiday_list }
      else
        format.html { render :new }
        format.json { render json: @holiday_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holiday_lists/1
  # PATCH/PUT /holiday_lists/1.json
  def update
    respond_to do |format|
      if @holiday_list.update(holiday_list_params)
        format.html { redirect_to @holiday_list, notice: 'Holiday list was successfully updated.' }
        format.json { render :show, status: :ok, location: @holiday_list }
      else
        format.html { render :edit }
        format.json { render json: @holiday_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holiday_lists/1
  # DELETE /holiday_lists/1.json
  def destroy
    @holiday_list.destroy
    respond_to do |format|
      format.html { redirect_to holiday_lists_url, notice: 'Holiday list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holiday_list
      @holiday_list = HolidayList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def holiday_list_params
      params.require(:holiday_list).permit(:name, :date)
    end
end
