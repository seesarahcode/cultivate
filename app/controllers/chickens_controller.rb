class ChickensController < ApplicationController
  before_action :set_chicken, only: [:show, :edit, :update, :destroy]

  layout 'chicken'

  # GET /chickens
  # GET /chickens.json
  def index
    @chickens = Chicken.all
  end

  # GET /chickens/1
  # GET /chickens/1.json
  def show
  end

  # GET /chickens/new
  def new
    @chicken = Chicken.new
  end

  # GET /chickens/1/edit
  def edit
  end

  # POST /chickens
  # POST /chickens.json
  def create
    @chicken = Chicken.new(chicken_params)

    respond_to do |format|
      if @chicken.save
        format.html { redirect_to @chicken, notice: 'Chicken was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chicken }
      else
        format.html { render action: 'new' }
        format.json { render json: @chicken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chickens/1
  # PATCH/PUT /chickens/1.json
  def update
    respond_to do |format|
      if @chicken.update(chicken_params)
        format.html { redirect_to @chicken, notice: 'Chicken was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chicken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chickens/1
  # DELETE /chickens/1.json
  def destroy
    @chicken.destroy
    respond_to do |format|
      format.html { redirect_to chickens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chicken
      @chicken = Chicken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chicken_params
      params.require(:chicken).permit(:category, :name, :birthdate, :breed, :sex, :description, :age)
    end
end
