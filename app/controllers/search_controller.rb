class SearchController < ApplicationController
  def index
    #query database
    #organize data
    #render json
    render json: {data: params['zip']}
  end
end
