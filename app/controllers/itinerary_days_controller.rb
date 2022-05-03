class ItineraryDaysController < ApplicationController
  before_action :set_itinerary_day, only: %i[ show edit update destroy ]

  # GET /itinerary_days or /itinerary_days.json
  def index
    @itinerary_days = ItineraryDay.all
  end

  # GET /itinerary_days/1 or /itinerary_days/1.json
  def show
  end

  # GET /itinerary_days/new
  def new
    @itinerary_day = ItineraryDay.new
  end

  # GET /itinerary_days/1/edit
  def edit
  end

  # POST /itinerary_days or /itinerary_days.json
  def create
    @itinerary_day = ItineraryDay.new(itinerary_day_params)

    respond_to do |format|
      if @itinerary_day.save
        format.html { redirect_to itinerary_day_url(@itinerary_day), notice: "Itinerary day was successfully created." }
        format.json { render :show, status: :created, location: @itinerary_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @itinerary_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itinerary_days/1 or /itinerary_days/1.json
  def update
    respond_to do |format|
      if @itinerary_day.update(itinerary_day_params)
        format.html { redirect_to itinerary_day_url(@itinerary_day), notice: "Itinerary day was successfully updated." }
        format.json { render :show, status: :ok, location: @itinerary_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @itinerary_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itinerary_days/1 or /itinerary_days/1.json
  def destroy
    @itinerary_day.destroy

    respond_to do |format|
      format.html { redirect_to itinerary_days_url, notice: "Itinerary day was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerary_day
      @itinerary_day = ItineraryDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def itinerary_day_params
      params.require(:itinerary_day).permit(:trip_id, :days, :header, :day_text, :position)
    end
end
