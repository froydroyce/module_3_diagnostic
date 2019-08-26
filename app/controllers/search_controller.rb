class SearchController < ApplicationController
  def index
    render locals: {
      facade: StationSearch.new(params[:q])
    }
  end
end
