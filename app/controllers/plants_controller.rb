class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  before_action :find_garden, only: [:create, :new, :show, :edit, :update, :destroy]

  layout 'plant'

  # GET /plants
  # GET /plants.json
  def index
    @plants = @garden.plants.all
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    @plant = @garden.plants.find(params[:id])
  end

  # GET /plants/new
  def new
    @plant = @garden.plants.new
  end

  # GET /plants/1/edit
  def edit
    @plant = @garden.plants.find(params[:id])
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = @garden.plants.new(params[plant_params])
    respond_to do |format|
      if @plant.save
        format.html { redirect_to garden_plants_path(@garden), notice: 'Plant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plant }
      else
        format.html { render action: 'new' }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    @plant = @garden.plants.find(params[:id])
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to [@garden, @plant], notice: 'Plant was successfully updated.' }
        format.json { head :no_content }
      else
        @gardens = Garden.order('position ASC')
        @plant_count = Plant.count
        format.html { render action: 'edit' }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant = @garden.plants.find(params[:id])
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to garden_plants_path(@garden) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:type, :variety, :seed_source, 
                                    :plant_date, :plant_quantity, :notes, :garden_id)
    end

    def find_garden
      @garden = Garden.find(params[:garden_id])
    end

end
