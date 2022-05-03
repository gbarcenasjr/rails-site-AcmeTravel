class LodgingsController < ApplicationController
  before_action :set_lodging, only: %i[ show edit update destroy ]

  # GET /lodgings or /lodgings.json
  def index
    @lodgings = Lodging.all
  end

  # GET /lodgings/1 or /lodgings/1.json
  def show
  end

  # GET /lodgings/new
  def new
    @lodging = Lodging.new
  end

  # GET /lodgings/1/edit
  def edit
  end

  # POST /lodgings or /lodgings.json
  def create
    @lodging = Lodging.new(lodging_params)

    respond_to do |format|
      if @lodging.save
        format.html { redirect_to lodging_url(@lodging), notice: "Lodging was successfully created." }
        format.json { render :show, status: :created, location: @lodging }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lodgings/1 or /lodgings/1.json
  def update
    respond_to do |format|
      if @lodging.update(lodging_params)
        format.html { redirect_to lodging_url(@lodging), notice: "Lodging was successfully updated." }
        format.json { render :show, status: :ok, location: @lodging }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodgings/1 or /lodgings/1.json
  def destroy
    @lodging.destroy

    respond_to do |format|
      format.html { redirect_to lodgings_url, notice: "Lodging was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lodging
      @lodging = Lodging.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lodging_params
      params.require(:lodging).permit(:trip_id, :position, :name, :location, :level, :number_of_nights, :description, :photo, :photo_alt)
    end
end
