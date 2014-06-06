class TreesController < ApplicationController
  before_action :set_tree, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  before_action :find_orchard

  layout 'orchard'

  # GET /trees
  # GET /trees.json
  def index
    @trees = @orchard.trees.all
  end

  # GET /trees/1
  # GET /trees/1.json
  def show
    @tree = @orchard.trees.find(params[:id])
  end

  # GET /trees/new
  def new
    @tree = @orchard.trees.new
  end

  # GET /trees/1/edit
  def edit
    @tree = @orchard.trees.find(params[:id])
  end

  # POST /trees
  # POST /trees.json
  def create
    @tree = @orchard.trees.new(params[tree_params])

    respond_to do |format|
      if @tree.save
        format.html { redirect_to orchard_trees_path(@orchard), notice: 'Tree was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tree }
      else
        format.html { render action: 'new' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trees/1
  # PATCH/PUT /trees/1.json
  def update
    @tree = @orchard.trees.find(params[:id])
    respond_to do |format|
      if @tree.update(tree_params)
        format.html { redirect_to [@orchard, @tree], notice: 'Tree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trees/1
  # DELETE /trees/1.json
  def destroy
    @tree.destroy
    respond_to do |format|
      format.html { redirect_to trees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree
      @tree = Tree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tree_params
      params.require(:tree).permit(:tree_type, :variety, :tree_source, :plant_date, 
                                    :plant_quantity, :notes)
    end

    def find_orchard
      @orchard = Orchard.find(params[:orchard_id])
    end
end
