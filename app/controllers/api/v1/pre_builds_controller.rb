module Api
  module V1
    class PreBuildsController < ApplicationController
      before_action :set_pre_build, only: %i[ show update destroy ]
    
      # GET /pre_builds
      def index
        @pre_builds = PreBuild.all
    
        render json: @pre_builds
      end
    
      # GET /pre_builds/1
      def show
        render json: @pre_build
      end
    
      # POST /pre_builds
      def create
        @pre_build = PreBuild.new(pre_build_params)
    
        if @pre_build.save
          render json: @pre_build, status: :created, location: @pre_build
        else
          render json: @pre_build.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /pre_builds/1
      def update
        if @pre_build.update(pre_build_params)
          render json: @pre_build
        else
          render json: @pre_build.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /pre_builds/1
      def destroy
        @pre_build.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_pre_build
          @pre_build = PreBuild.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def pre_build_params
          params.require(:pre_build).permit(:purpose_id, :price_range_id, :cpu, :cooler, :main, :ram, :ssd, :hdd, :gpu, :psw, :case, :price, :status)
        end
    end
    
  end
end


