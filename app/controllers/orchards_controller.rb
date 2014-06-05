class OrchardsController < ApplicationController
  before_action :set_orchard, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  layout 'orchard'

  # GET /orchards
  # GET /orchards.json
  def index
    @orchards = Orchard.all
  end

  # GET /orchards/1
  # GET /orchards/1.json
  def show
  end

  # GET /orchards/new
  def new
    @orchard = Orchard.new
  end

  # GET /orchards/1/edit
  def edit
  end

  # POST /orchards
  # POST /orchards.json
  def create
    @orchard = Orchard.new(orchard_params)

    respond_to do |format|
      if @orchard.save
        format.html { redirect_to @orchard, notice: 'Orchard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @orchard }
      else
        format.html { render action: 'new' }
        format.json { render json: @orchard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orchards/1
  # PATCH/PUT /orchards/1.json
  def update
    respond_to do |format|
      if @orchard.update(orchard_params)
        format.html { redirect_to @orchard, notice: 'Orchard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orchard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orchards/1
  # DELETE /orchards/1.json
  def destroy
    @orchard.destroy
    respond_to do |format|
      format.html { redirect_to orchards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orchard
      @orchard = Orchard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orchard_params
      params.require(:orchard).permit(:name, :description)
    end
end
