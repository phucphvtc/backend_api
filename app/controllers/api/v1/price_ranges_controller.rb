module Api
  module V1
  
class PriceRangesController < ApplicationController
  before_action :set_price_range, only: %i[ show update destroy ]

  # GET /price_ranges
  def index
    @price_ranges = PriceRange.all

    render json: @price_ranges
  end

  # GET /price_ranges/1
  def show
    render json: @price_range
  end

  # POST /price_ranges
  def create
    @price_range = PriceRange.new(price_range_params)

    if @price_range.save
      render json: @price_range, status: :created, location: @price_range
    else
      render json: @price_range.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /price_ranges/1
  def update
    if @price_range.update(price_range_params)
      render json: @price_range
    else
      render json: @price_range.errors, status: :unprocessable_entity
    end
  end

  # DELETE /price_ranges/1
  def destroy
    @price_range.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_range
      @price_range = PriceRange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def price_range_params
      params.require(:price_range).permit(:price, :status, :operator)
    end
end

  end
end


class PriceRangesController < ApplicationController
  before_action :set_price_range, only: %i[ show update destroy ]

  # GET /price_ranges
  def index
    @price_ranges = PriceRange.all

    render json: @price_ranges
  end

  # GET /price_ranges/1
  def show
    render json: @price_range
  end

  # POST /price_ranges
  def create
    @price_range = PriceRange.new(price_range_params)

    if @price_range.save
      render json: @price_range, status: :created, location: @price_range
    else
      render json: @price_range.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /price_ranges/1
  def update
    if @price_range.update(price_range_params)
      render json: @price_range
    else
      render json: @price_range.errors, status: :unprocessable_entity
    end
  end

  # DELETE /price_ranges/1
  def destroy
    @price_range.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_range
      @price_range = PriceRange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def price_range_params
      params.require(:price_range).permit(:price, :status, :operator)
    end
end
