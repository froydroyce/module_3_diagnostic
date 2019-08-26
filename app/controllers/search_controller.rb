class SearchController < ApplicationController
  def index
    render locals: {
      facade: StationSearch.new
    }
  end
end
