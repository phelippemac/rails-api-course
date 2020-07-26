class KindnessesController < ApplicationController
  before_action :set_kindness, only: [:show, :update, :destroy]

  # GET /kindnesses
  def index
    @kindnesses = Kindness.all

    render json: @kindnesses
  end

  # GET /kindnesses/1
  def show
    render json: @kindness
  end

  # POST /kindnesses
  def create
    @kindness = Kindness.new(kindness_params)

    if @kindness.save
      render json: @kindness, status: :created, location: @kindness
    else
      render json: @kindness.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kindnesses/1
  def update
    if @kindness.update(kindness_params)
      render json: @kindness
    else
      render json: @kindness.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kindnesses/1
  def destroy
    @kindness.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kindness
      @kindness = Kindness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kindness_params
      params.require(:kindness).permit(:description)
    end
end
