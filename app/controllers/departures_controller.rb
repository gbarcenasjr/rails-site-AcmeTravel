class DeparturesController < ApplicationController
  before_action :set_departure, only: %i[ show edit update destroy ]

  # GET /departures or /departures.json
  def index
    @departures = Departure.all
  end

  # GET /departures/1 or /departures/1.json
  def show
  end

  # GET /departures/new
  def new
    @departure = Departure.new
  end

  # GET /departures/1/edit
  def edit
  end

  # POST /departures or /departures.json
  def create
    @departure = Departure.new(departure_params)

    respond_to do |format|
      if @departure.save
        format.html { redirect_to departure_url(@departure), notice: "Departure was successfully created." }
        format.json { render :show, status: :created, location: @departure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departures/1 or /departures/1.json
  def update
    respond_to do |format|
      if @departure.update(departure_params)
        format.html { redirect_to departure_url(@departure), notice: "Departure was successfully updated." }
        format.json { render :show, status: :ok, location: @departure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @departure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departures/1 or /departures/1.json
  def destroy
    @departure.destroy

    respond_to do |format|
      format.html { redirect_to departures_url, notice: "Departure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departure
      @departure = Departure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departure_params
      params.require(:departure).permit(:departure_date, :return_date, :price, :difficulty_level)
    end
end
