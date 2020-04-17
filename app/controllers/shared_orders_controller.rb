class SharedOrdersController < ApplicationController
  before_action :set_shared_order, only: [:show, :edit, :update, :destroy]

  # GET /shared_orders
  # GET /shared_orders.json
  def index
    @shared_orders = SharedOrder.all
  end

  # GET /shared_orders/1
  # GET /shared_orders/1.json
  def show
  end

  # GET /shared_orders/new
  def new
    @shared_order = SharedOrder.new
  end

  # GET /shared_orders/1/edit
  def edit
  end

  # POST /shared_orders
  # POST /shared_orders.json
  def create
    @shared_order = SharedOrder.new(shared_order_params)

    respond_to do |format|
      if @shared_order.save
        format.html { redirect_to @shared_order, notice: 'Shared order was successfully created.' }
        format.json { render :show, status: :created, location: @shared_order }
      else
        format.html { render :new }
        format.json { render json: @shared_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_orders/1
  # PATCH/PUT /shared_orders/1.json
  def update
    respond_to do |format|
      if @shared_order.update(shared_order_params)
        format.html { redirect_to @shared_order, notice: 'Shared order was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_order }
      else
        format.html { render :edit }
        format.json { render json: @shared_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_orders/1
  # DELETE /shared_orders/1.json
  def destroy
    @shared_order.destroy
    respond_to do |format|
      format.html { redirect_to shared_orders_url, notice: 'Shared order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_order
      @shared_order = SharedOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shared_order_params
      params.require(:shared_order).permit(:name, :source_id, :starts, :ends)
    end
end
