# == Schema Information
#
# Table name: tasklists
#
#  id                         :integer          not null, primary key
#  user_id                    :integer
#  client_id                  :integer
#  project_id                 :integer
#  taskname                   :string
#  description                :text
#  status_id                  :integer
#  estimated_time_to_complete :decimal(, )
#  start_date                 :date
#  date_needed_by             :date
#  actual_date_completed      :date
#  actual_time_to_complete    :decimal(, )
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_tasklists_on_client_id   (client_id)
#  index_tasklists_on_project_id  (project_id)
#  index_tasklists_on_status_id   (status_id)
#  index_tasklists_on_user_id     (user_id)
#

class TasklistsController < ApplicationController
  before_action :set_tasklist, only: [:show, :edit, :update, :destroy]

  # GET /tasklists
  # GET /tasklists.json
  def index
    @tasklists = Tasklist.all
  end

  # GET /tasklists/1
  # GET /tasklists/1.json
  def show
  end

  # GET /tasklists/new
  def new
    @tasklist = Tasklist.new
  end

  # GET /tasklists/1/edit
  def edit
  end

  # POST /tasklists
  # POST /tasklists.json
  def create
    @tasklist = Tasklist.new(tasklist_params)

    respond_to do |format|
      if @tasklist.save
        format.html { redirect_to @tasklist, notice: 'Tasklist was successfully created.' }
        format.json { render :show, status: :created, location: @tasklist }
      else
        format.html { render :new }
        format.json { render json: @tasklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasklists/1
  # PATCH/PUT /tasklists/1.json
  def update
    respond_to do |format|
      if @tasklist.update(tasklist_params)
        format.html { redirect_to @tasklist, notice: 'Tasklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasklist }
      else
        format.html { render :edit }
        format.json { render json: @tasklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasklists/1
  # DELETE /tasklists/1.json
  def destroy
    @tasklist.destroy
    respond_to do |format|
      format.html { redirect_to tasklists_url, notice: 'Tasklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasklist
      @tasklist = Tasklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasklist_params
      params.require(:tasklist).permit(:user_id, :client_id, :project_id, :taskname, :description, :status_id, :estimated_time_to_complete, :start_date, :date_needed_by, :actual_date_completed, :actual_time_to_complete)
    end
end
