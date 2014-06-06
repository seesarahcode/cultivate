class DucksController < ApplicationController
  before_action :set_duck, only: [:show, :edit, :update, :destroy]

  layout 'duck'

  # GET /ducks
  # GET /ducks.json
  def index
    @ducks = Duck.all
  end

  # GET /ducks/1
  # GET /ducks/1.json
  def show
  end

  # GET /ducks/new
  def new
    @duck = Duck.new
  end

  # GET /ducks/1/edit
  def edit
  end

  # POST /ducks
  # POST /ducks.json
  def create
    @duck = Duck.new(duck_params)

    respond_to do |format|
      if @duck.save
        format.html { redirect_to @duck, notice: 'Duck was successfully created.' }
        format.json { render action: 'show', status: :created, location: @duck }
      else
        format.html { render action: 'new' }
        format.json { render json: @duck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ducks/1
  # PATCH/PUT /ducks/1.json
  def update
    respond_to do |format|
      if @duck.update(duck_params)
        format.html { redirect_to @duck, notice: 'Duck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @duck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ducks/1
  # DELETE /ducks/1.json
  def destroy
    @duck.destroy
    respond_to do |format|
      format.html { redirect_to ducks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duck
      @duck = Duck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duck_params
      params.require(:duck).permit(:category, :name, :birthdate, :breed, :sex, :description, :age)
    end
end
