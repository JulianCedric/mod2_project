class SearchesController < ApplicationController
    
    def search 
        @search = Search.new
    end

    def create
        @search = Search.create(search_params)
        redirect_to search_path(@search)
    end

    def show
        @search = Search.find(params[:id])
        @results = @search.search_heroes
    end

    private

    def search_params
       params.require(:search).permit! 
    end
end
