class ReservationOptionsController < ApplicationController
  before_action :set_reservation_option, only: [:show, :edit, :update, :destroy]

  # GET /reservation_options
  # GET /reservation_options.json
  def index
    @reservation_options = ReservationOption.all
  end

  # GET /reservation_options/1
  # GET /reservation_options/1.json
  def show
  end

  # GET /reservation_options/new
  def new
    @reservation_option = ReservationOption.new
  end

  # GET /reservation_options/1/edit
  def edit
  end

  # POST /reservation_options
  # POST /reservation_options.json
  def create
    @reservation_option = ReservationOption.new(reservation_option_params)

    respond_to do |format|
      if @reservation_option.save
        format.html { redirect_to @reservation_option, notice: 'Reservation option was successfully created.' }
        format.json { render :show, status: :created, location: @reservation_option }
      else
        format.html { render :new }
        format.json { render json: @reservation_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservation_options/1
  # PATCH/PUT /reservation_options/1.json
  def update
    respond_to do |format|
      if @reservation_option.update(reservation_option_params)
        format.html { redirect_to @reservation_option, notice: 'Reservation option was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation_option }
      else
        format.html { render :edit }
        format.json { render json: @reservation_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_options/1
  # DELETE /reservation_options/1.json
  def destroy
    @reservation_option.destroy
    respond_to do |format|
      format.html { redirect_to reservation_options_url, notice: 'Reservation option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_option
      @reservation_option = ReservationOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_option_params
      params.require(:reservation_option).permit(:quantite)
    end
end
