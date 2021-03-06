# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  name           :string
#  address_line_1 :string
#  address_line_2 :string
#  city           :string
#  state          :string
#  zip            :string
#  phone          :string
#  contact_name   :string
#  contact_email  :string
#  contact_phone  :string
#  billing_rate   :decimal(, )
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  internal_id    :integer
#
# Indexes
#
#  index_clients_on_internal_id  (internal_id)
#

class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.filter(filtering_params(params)).order(params[:sort]).paginate(:page => params[:page], per_page: 500)

    respond_to do |format|
      format.html
      format.csv { send_data @clients.to_csv }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :address_line_1, :address_line_2, :city, :state, :zip, :phone, :contact_name, :contact_email, :contact_phone, :billing_rate, :status, :internal_id)
    end
    def filtering_params(params)
      params.slice(:client_name)
    end
end
