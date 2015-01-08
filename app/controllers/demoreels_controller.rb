class DemoreelsController < ApplicationController
  before_action :set_demoreel, only: [:show, :edit, :update, :destroy]

  # GET /demoreels
  # GET /demoreels.json
  def index
    @demoreels = Demoreel.all
  end

  # GET /demoreels/1
  # GET /demoreels/1.json
  def show
  end

  def viewer
    @pageclass = "demoreel"
    @demoreel = Demoreel.find_by active: true
  end

  # GET /demoreels/new
  def new
    @demoreel = Demoreel.new
  end

  # GET /demoreels/1/edit
  def edit
  end

  # POST /demoreels
  # POST /demoreels.json
  def create
    @demoreel = Demoreel.new(demoreel_params)

    respond_to do |format|
      if @demoreel.save
        format.html { redirect_to @demoreel, notice: 'Demoreel was successfully created.' }
        format.json { render :show, status: :created, location: @demoreel }
      else
        format.html { render :new }
        format.json { render json: @demoreel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demoreels/1
  # PATCH/PUT /demoreels/1.json
  def update
    respond_to do |format|
      if @demoreel.update(demoreel_params)
        format.html { redirect_to @demoreel, notice: 'Demoreel was successfully updated.' }
        format.json { render :show, status: :ok, location: @demoreel }
      else
        format.html { render :edit }
        format.json { render json: @demoreel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demoreels/1
  # DELETE /demoreels/1.json
  def destroy
    @demoreel.destroy
    respond_to do |format|
      format.html { redirect_to demoreels_url, notice: 'Demoreel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demoreel
      @demoreel = Demoreel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demoreel_params
      params.require(:demoreel).permit(:video, :resume, :breakdown, :active)
    end
end
