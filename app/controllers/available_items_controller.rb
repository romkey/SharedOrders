class AvailableItemsController < ApplicationController
  before_action :set_available_item, only: [:show, :edit, :update, :destroy]

  # GET /available_items
  # GET /available_items.json
  def index
    @available_items = AvailableItem.all
  end

  # GET /available_items/1
  # GET /available_items/1.json
  def show
  end

  # GET /available_items/new
  def new
    @available_item = AvailableItem.new
  end

  # GET /available_items/1/edit
  def edit
  end

  # POST /available_items
  # POST /available_items.json
  def create
    @available_item = AvailableItem.new(available_item_params)

    respond_to do |format|
      if @available_item.save
        format.html { redirect_to @available_item, notice: 'Available item was successfully created.' }
        format.json { render :show, status: :created, location: @available_item }
      else
        format.html { render :new }
        format.json { render json: @available_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_items/1
  # PATCH/PUT /available_items/1.json
  def update
    respond_to do |format|
      if @available_item.update(available_item_params)
        format.html { redirect_to @available_item, notice: 'Available item was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_item }
      else
        format.html { render :edit }
        format.json { render json: @available_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_items/1
  # DELETE /available_items/1.json
  def destroy
    @available_item.destroy
    respond_to do |format|
      format.html { redirect_to available_items_url, notice: 'Available item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_item
      @available_item = AvailableItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def available_item_params
      params.require(:available_item).permit(:name, :price, :source_id, :unit, :price_per_unit)
    end
end
