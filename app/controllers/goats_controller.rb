class GoatsController < ApplicationController
  before_action :set_goat, only: [:show, :edit, :update, :destroy]

  layout 'goat'

  # GET /goats
  # GET /goats.json
  def index
    @goats = Goat.all
  end

  # GET /goats/1
  # GET /goats/1.json
  def show
  end

  # GET /goats/new
  def new
    @goat = Goat.new
  end

  # GET /goats/1/edit
  def edit
  end

  # POST /goats
  # POST /goats.json
  def create
    @goat = Goat.new(goat_params)

    respond_to do |format|
      if @goat.save
        format.html { redirect_to @goat, notice: 'Goat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @goat }
      else
        format.html { render action: 'new' }
        format.json { render json: @goat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goats/1
  # PATCH/PUT /goats/1.json
  def update
    respond_to do |format|
      if @goat.update(goat_params)
        format.html { redirect_to @goat, notice: 'Goat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @goat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goats/1
  # DELETE /goats/1.json
  def destroy
    @goat.destroy
    respond_to do |format|
      format.html { redirect_to goats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goat
      @goat = Goat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goat_params
      params.require(:goat).permit(:category, :name, :birthdate, :breed, :sex, :description, :age)
    end
end
