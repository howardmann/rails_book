class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
    @monsters = Monster.all
  end

  def show
    @planet = Planet.find(params[:id])
  end
end
