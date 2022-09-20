module Api
  module V1 
    class SearchController < ApplicationController
      def search
        
        @q = Detail.ransack(params[:q])
        @details = @q.result

        render json: @details 
        
      end
    end
  end
end
