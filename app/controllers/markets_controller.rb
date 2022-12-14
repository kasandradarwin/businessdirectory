class MarketsController < ApplicationController
  before_action :set_market, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except: [:index, :show]

  before_action :authorize_user!, only:[:edit, :update, :destroy]

  # GET /markets or /markets.json
  def index
    # @markets = Market.all
    @markets = Market.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end

  # GET /markets/1 or /markets/1.json
  def show
  end

  # GET /markets/new
  def new
    @market = Market.new
  end

  # GET /markets/1/edit
  def edit
  end

  # POST /markets or /markets.json
  def create
    @market = Market.new(market_params)
    @market.user = current_user

    p @market
    p @market.user

    respond_to do |format|
      if @market.save
        format.html { redirect_to market_url(@market), notice: "Market was successfully created." }
        format.json { render :show, status: :created, location: @market }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markets/1 or /markets/1.json
  def update
    respond_to do |format|
      if @market.update(market_params)
        format.html { redirect_to market_url(@market), notice: "Market was successfully updated." }
        format.json { render :show, status: :ok, location: @market }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markets/1 or /markets/1.json
  def destroy
    @market.destroy

    respond_to do |format|
      format.html { redirect_to markets_url, notice: "Market was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def market_params
      params.require(:market).permit(:title, :description, :address, :start_time, :end_time)
    end

    def authorize_user!
      redirect_to root_path, alert: "Not authorized!" unless can?(:crud, @market)
    end
end
