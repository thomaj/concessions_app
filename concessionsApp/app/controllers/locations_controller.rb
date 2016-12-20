class LocationsController < ApplicationController
  before_action :set_location

  # GET /locations
  def index
    @locations = Location.all
  end

  # GET /locations/1
  def show
    @items = @location.items
  end

  # GET /locations/new
  def new
  end

  def set_stock
    @itemsAtLocation = @location.items 
    allItems = Item.all
    @itemsNotAtLocation = allItems - @itemsAtLocation
  end

  def update_stock 
  end

  def set_availability 
    items_here = Item.all 
    @candy = items_here.where("category = '0'") 
    @snacks = items_here.where("category = '1'") 
    @cBev = items_here.where("category = '2'") 
    @hBev = items_here.where("category = '3'") 
    @cooked = items_here.where("category = '4'") 
    @morning = items_here.where("category = '5'") 
    @fruit = items_here.where("category = '6'") 
  end

  def update_availability 
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:location, :open)
    end
end
