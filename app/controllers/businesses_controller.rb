class BusinessesController < ApplicationController
  before_action :set_business, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except: [:index, :show]

  before_action :authorize_user!, only:[:edit, :update, :destroy]

  # GET /businesses or /businesses.json
  def index
    @businesses = Business.all
    
      @q = Business.ransack(params[:q])
      @business = @q.result(distinct: true)
    
    # @likes = @business.likes.find_by(user: current_user)
    # @like = @business.likes.find_by(user: current_user)
    

  end

  # GET /businesses/1 or /businesses/1.json
  def show
    # @likes = @business.likes.find_by(user: current_user)
    @like = @business.likes.find_by(user: current_user)
  end

  # GET /businesses/new
  def new
    @business = Business.new
  end

  # GET /businesses/1/edit
  def edit
  end

  # POST /businesses or /businesses.json
  def create
    @business = Business.new(business_params)
    @business.user = current_user

    respond_to do |format|
      if @business.save
        format.html { redirect_to business_url(@business), notice: "Business was successfully created." }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /businesses/1 or /businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to business_url(@business), notice: "Business was successfully updated." }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1 or /businesses/1.json
  def destroy
    @business.destroy

    respond_to do |format|
      format.html { redirect_to businesses_url, notice: "Business was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def liked
    @businesses = current_user.liked_businesses
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def business_params
      params.require(:business).permit(:business_name, :category, :one_liner, :business_email, :business_phone, :description, :logo_url, :shop_online, :website)
    end

    def authorize_user!
      redirect_to root_path, alert: "Not authorized!" unless can?(:crud, @business)
    end
end
