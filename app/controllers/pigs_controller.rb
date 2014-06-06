class PigsController < ApplicationController
  before_action :set_pig, only: [:show, :edit, :update, :destroy]

  layout 'pig'

  # GET /pigs
  # GET /pigs.json
  def index
    @pigs = Pig.all
  end

  # GET /pigs/1
  # GET /pigs/1.json
  def show
  end

  # GET /pigs/new
  def new
    @pig = Pig.new
  end

  # GET /pigs/1/edit
  def edit
  end

  # POST /pigs
  # POST /pigs.json
  def create
    @pig = Pig.new(pig_params)

    respond_to do |format|
      if @pig.save
        format.html { redirect_to @pig, notice: 'Pig was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pig }
      else
        format.html { render action: 'new' }
        format.json { render json: @pig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pigs/1
  # PATCH/PUT /pigs/1.json
  def update
    respond_to do |format|
      if @pig.update(pig_params)
        format.html { redirect_to @pig, notice: 'Pig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pigs/1
  # DELETE /pigs/1.json
  def destroy
    @pig.destroy
    respond_to do |format|
      format.html { redirect_to pigs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pig
      @pig = Pig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pig_params
      params.require(:pig).permit(:category, :name, :birthdate, :breed, :sex, :description, :age)
    end
end
