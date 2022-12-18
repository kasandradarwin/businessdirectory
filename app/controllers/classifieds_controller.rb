class ClassifiedsController < ApplicationController
  before_action :set_classified, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except: [:index, :show]

  before_action :authorize_user!, only:[:edit, :update, :destroy]

  # GET /classifieds or /classifieds.json
  def index
    # @classifieds = Classified.all

    #  @keyword = params[:q].values[0]
      @q = Classified.ransack(params[:q])
      @classifieds = @q.result(distinct: true)
  end

  # GET /classifieds/1 or /classifieds/1.json
  def show
  end

  # GET /classifieds/new
  def new
    @classified = Classified.new
  end

  # GET /classifieds/1/edit
  def edit
  end

  # POST /classifieds or /classifieds.json
  def create
    @classified = Classified.new(classified_params)
    @classified.user = current_user

    respond_to do |format|
      if @classified.save
        format.html { redirect_to classified_url(@classified), notice: "Classified was successfully created." }
        format.json { render :show, status: :created, location: @classified }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifieds/1 or /classifieds/1.json
  def update
    respond_to do |format|
      if @classified.update(classified_params)
        format.html { redirect_to classified_url(@classified), notice: "Classified was successfully updated." }
        format.json { render :show, status: :ok, location: @classified }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifieds/1 or /classifieds/1.json
  def destroy
    @classified.destroy

    respond_to do |format|
      format.html { redirect_to classifieds_url, notice: "Classified was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classified
      @classified = Classified.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classified_params
      params.require(:classified).permit(:title, :category, :contact_info, :image_url, :description)
    end

    def authorize_user!
      redirect_to root_path, alert: "Not authorized!" unless can?(:crud, @classified)
    end
end
