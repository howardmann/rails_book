class MonstersController < ApplicationController
  def index
    @monsters = Monster.all
    @planets = Planet.all
  end

  def show
    @monster = Monster.find(params[:id])
  end
end
