class GamesController < ApplicationController
  def index
    ratings
    @games = Game.paginate :per_page => 10, :page => params[:page]
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
