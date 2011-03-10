class GamesController < ApplicationController
  def index
    ratings
    @games = Game.all
  end

  def show
    ratings
    @game = Game.find(params[:id])
  end
  
  private
  def ratings
    @ratings = ['None', 'Sucks', 'Lame', 'Ehh', 'Badass', 'Super Badass']
  end
end
