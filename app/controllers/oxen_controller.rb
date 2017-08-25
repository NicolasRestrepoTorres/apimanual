class OxenController < ApplicationController
  before_action :set_ox, only: [:show, :update, :destroy]

  # GET /oxen
  def index
    @oxen = Ox.all

    render json: @oxen
  end

  # GET /oxen/1
  def show
    render json: @ox
  end

  # POST /oxen
  def create
    @ox = Ox.new(ox_params)

    if @ox.save
      render json: @ox, status: :created, location: @ox
    else
      render json: @ox.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /oxen/1
  def update
    if @ox.update(ox_params)
      render json: @ox
    else
      render json: @ox.errors, status: :unprocessable_entity
    end
  end

  # DELETE /oxen/1
  def destroy
    @ox.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ox
      @ox = Ox.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ox_params
      params.fetch(:ox, {})
    end
end
