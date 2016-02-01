# == Schema Information
#
# Table name: activitytypes
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ActivitytypesController < ApplicationController
  before_action :set_activitytype, only: [:show, :edit, :update, :destroy]

  # GET /activitytypes
  # GET /activitytypes.json
  def index
    @activitytypes = Activitytype.all
  end

  # GET /activitytypes/1
  # GET /activitytypes/1.json
  def show
  end

  # GET /activitytypes/new
  def new
    @activitytype = Activitytype.new
  end

  # GET /activitytypes/1/edit
  def edit
  end

  # POST /activitytypes
  # POST /activitytypes.json
  def create
    @activitytype = Activitytype.new(activitytype_params)

    respond_to do |format|
      if @activitytype.save
        format.html { redirect_to @activitytype, notice: 'Activitytype was successfully created.' }
        format.json { render :show, status: :created, location: @activitytype }
      else
        format.html { render :new }
        format.json { render json: @activitytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activitytypes/1
  # PATCH/PUT /activitytypes/1.json
  def update
    respond_to do |format|
      if @activitytype.update(activitytype_params)
        format.html { redirect_to @activitytype, notice: 'Activitytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @activitytype }
      else
        format.html { render :edit }
        format.json { render json: @activitytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activitytypes/1
  # DELETE /activitytypes/1.json
  def destroy
    @activitytype.destroy
    respond_to do |format|
      format.html { redirect_to activitytypes_url, notice: 'Activitytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activitytype
      @activitytype = Activitytype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activitytype_params
      params.require(:activitytype).permit(:description)
    end
end
