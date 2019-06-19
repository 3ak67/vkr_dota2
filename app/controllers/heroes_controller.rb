class HeroesController < ApplicationController
  def show
    @hero = Hero.find_by(hero_id: params[:hero_id])
  end
end