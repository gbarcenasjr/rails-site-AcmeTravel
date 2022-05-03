class ContactUsRequestsController < ApplicationController
  before_action :set_contact_us_request, only: %i[ show edit update destroy ]

  # GET /contact_us_requests or /contact_us_requests.json
  def index
    @contact_us_requests = ContactUsRequest.all
  end

  # GET /contact_us_requests/1 or /contact_us_requests/1.json
  def show
  end

  # GET /contact_us_requests/new
  def new
    @contact_us_request = ContactUsRequest.new
  end

  # GET /contact_us_requests/1/edit
  def edit
  end

  # POST /contact_us_requests or /contact_us_requests.json
  def create
    @contact_us_request = ContactUsRequest.new(contact_us_request_params)

    respond_to do |format|
      if @contact_us_request.save
        format.html { redirect_to contact_us_request_url(@contact_us_request), notice: "Contact us request was successfully created." }
        format.json { render :show, status: :created, location: @contact_us_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_us_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_us_requests/1 or /contact_us_requests/1.json
  def update
    respond_to do |format|
      if @contact_us_request.update(contact_us_request_params)
        format.html { redirect_to contact_us_request_url(@contact_us_request), notice: "Contact us request was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_us_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_us_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_us_requests/1 or /contact_us_requests/1.json
  def destroy
    @contact_us_request.destroy

    respond_to do |format|
      format.html { redirect_to contact_us_requests_url, notice: "Contact us request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_us_request
      @contact_us_request = ContactUsRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_us_request_params
      params.require(:contact_us_request).permit(:name, :regarding, :phone_number, :email_address, :message)
    end
end
