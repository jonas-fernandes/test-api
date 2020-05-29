class AgesController < ApplicationController
  before_action :set_name
  before_action :set_name_age, only: [:show, :update, :destroy]

  # GET /names/:name_id/ages
  def index
    json_response(@name.ages)
  end

  # GET /names/:name_id/ages/:id
  def show
    json_response(@age)
  end

  # POST /names/:name_id/ages
  def create
    @name.ages.create!(age_params)
    json_response(@name, :created)
  end

  # PUT /names/:name_id/ages/:id
  def update
    @age.update(age_params)
    head :no_content
  end

  # DELETE /names/:name_id/ages/:id
  def destroy
    @age.destroy
    head :no_content
  end

  private

  def age_params
    params.permit(:age)
  end

  def set_name
    @name = name.find(params[:name_id])
  end

  def set_name_age
    @age = @name.ages.find_by!(id: params[:id]) if @name
  end
end

