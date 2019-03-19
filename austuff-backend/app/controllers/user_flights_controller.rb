class UserFlightsController < ApplicationController
  before_action :set_user_flight, only: [:show, :update, :destroy]

  # GET /user_flights
  def index
    @user_flights = UserFlight.all

    render json: @user_flights
  end

  # GET /user_flights/1
  def show
    render json: @user_flight
  end

  # POST /user_flights
  def create
    @user_flight = UserFlight.new(user_flight_params)

    if @user_flight.save
      render json: @user_flight, status: :created, location: @user_flight
    else
      render json: @user_flight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_flights/1
  def update
    if @user_flight.update(user_flight_params)
      render json: @user_flight
    else
      render json: @user_flight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_flights/1
  def destroy
    @user_flight.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_flight
      @user_flight = UserFlight.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_flight_params
      params.require(:user).permit(:user_id, :flight_id)
    end
end
