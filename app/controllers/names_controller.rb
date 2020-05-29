class NamesController < ApplicationController
    before_action :set_name, only: [:show, :update, :destroy]

  # GET /names
  def index
    @names = Name.all
    json_response(@names)
  end

  # POST /names
  def create
    @name = Name.create!(name_params)
    json_response(@name, :created)
  end

  # GET /names/:id
  def show
    json_response(@name)
  end

  # PUT /names/:id
  def update
    @name.update(name_params)
    head :no_content
  end

  # DELETE /names/:id
  def destroy
    @name.destroy
    head :no_content
  end

  private

  def name_params
    # whitelist params
    params.permit(:first_name, :last_name)
  end

  def set_name
    @name = Name.find(params[:id])
  end
end

