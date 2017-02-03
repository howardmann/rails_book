class MonstersController < ApplicationController
  def index
    @monsters = Monster.all
    @planets = Planet.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.save
    render 'show'
  end

  def update
    @monster = Monster.find(params[:id])
    @monster.update_attributes(monster_params)
    @monster.save
    render 'show'
  end

  def destroy
    @monster = Monster.find(params[:id])
    @deleted = @monster
    @monster.destroy
    render :json => @deleted.to_json(:only => [:id, :name])
  end

  private
    def monster_params
      params.require(:monster).permit(:name, :age, :description, :planet_id)
    end

end
