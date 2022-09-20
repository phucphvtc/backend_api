module Api
  module V1 
    class SearchController < ApplicationController

      #Custom search serializer

      def search
        
        @q = Detail.ransack(params[:q])
        @abc = @q.result
        render json: @abc , each_serializer: SearchDetailSerializer

      end
    end
  end
end
