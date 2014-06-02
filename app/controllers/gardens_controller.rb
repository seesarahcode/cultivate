class GardensController < ApplicationController

   before_action :set_garden, only: [:show, :edit, :update, :destroy]
   before_filter :authenticate_user!

   layout 'garden'

	def index
    @gardens = Garden.all
  end

  # GET /gardens/1
  # GET /gardens/1.json
  def show
  end

  # GET /gardens/new
  def new
    @garden = Garden.new
  end

  # GET /gardens/1/edit
  def edit
  end

  def name
    "#{@garden.season} #{@garden.year}"
  end

  # POST /gardens
  # POST /gardens.json
  def create
    @garden = Garden.new(garden_params)

    respond_to do |format|
      if @garden.save
        format.html { redirect_to @garden, notice: 'Garden was successfully created.' }
        format.json { render action: 'show', status: :created, location: @garden }
      else
        format.html { render action: 'new' }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gardens/1
  # PATCH/PUT /gardens/1.json
  def update
    respond_to do |format|
      if @garden.update(garden_params)
        format.html { redirect_to @garden, notice: 'garden was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gardens/1
  # DELETE /gardens/1.json
  def destroy
    @garden.destroy
    respond_to do |format|
      format.html { redirect_to gardens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_params
      params.require(:garden).permit(:season, :year, :description)
    end  

end
