class RestaurantsController < ApplicationController
  def list
    @restaurants= Restaurant.all
  end
end
