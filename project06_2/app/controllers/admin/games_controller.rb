class Admin::GamesController < Admin::AdminController
  def index
    ratings
    @games = Game.all
  end

  def show
    ratings
    @game = Game.find(params[:id])
  end

  def new
    ratings
    @game = Game.new
  end

  def create
    ratings
    @user = current_user 
    @game = Game.new(params[:game])
    @game.user_id = @user.id
    if @game.save
      flash[:notice] = "Successfully created game."
      redirect_to admin_game_url(@game)
    else
      render :action => 'new'
    end
  end

  def edit
    ratings
    @game = Game.find(params[:id])
  end

  def update
    ratings
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:notice] = "Successfully updated game."
      redirect_to admin_game_url(@game)
    else
      render :action => 'edit'
    end
  end

  def destroy
    ratings
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Successfully destroyed game."
    redirect_to admin_games_url
  end
  
  private
  def ratings
    @ratings = ['None', 'Sucks', 'Lame', 'Ehh', 'Badass', 'Super Badass']
  end
end
