class CustomersController < ApplicationController
  before_action :set_custumer, only: [:show, :edit, :update, :destroy]

  # GET /custumers
  # GET /custumers.json
  def index
    @customers = Customer.all
  end

  # GET /custumers/1
  # GET /custumers/1.json
  def show
  end

  # GET /custumers/new
  def new
    @customer = Customer.new
  end

  # GET /custumers/1/edit
  def edit
  end

  # POST /custumers
  # POST /custumers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Custumer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custumers/1
  # PATCH/PUT /custumers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Custumer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custumers/1
  # DELETE /custumers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Custumer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custumer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_id, :first_name, :last_name, :email, :phone, :address_id)
    end
end
