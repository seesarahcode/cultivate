class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_action :set_garden, only: [:show, :edit, :new, :update, :create, :destroy]
  # GET /plants
  # GET /plants.json
  layout 'plant'

  def index
    @plants = Plant.all
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
  end

  # GET /plants/new
  def new
    @plant = Plant.new
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = @garden.plants.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to garden_plant_path(@garden, @plant), notice: 'Plant was successfully created.' }
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
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to garden_plant_path(@garden, @plant), notice: 'Plant was successfully updated.' }
        format.json { head :no_content }
      else
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
      format.html { redirect_to @garden, notice: 'Plant deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_garden
      @garden = Garden.find(params[:garden_id])
    end

    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:garden_id, :family, :variety, :seed_source, :quantity, :notes, :plant_date)
    end
end
