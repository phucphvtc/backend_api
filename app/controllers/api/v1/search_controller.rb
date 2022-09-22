module Api
  module V1 
    class SearchController < ApplicationController

      #Custom search serializer

      def search
        @q = Detail.ransack(params[:q])
        # @p = Detail.ransach(params[:p])
        @s_name = @q.result #&& @p.result
        render json: @s_name , each_serializer: nil
      end


    end
  end 
end
