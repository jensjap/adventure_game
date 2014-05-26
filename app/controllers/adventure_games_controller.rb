class AdventureGamesController < ApplicationController
  before_action :set_adventure_game, only: [:show, :edit, :update, :destroy]

  # GET /adventure_games
  def index
    @adventure_games = AdventureGame.all
  end

  # GET /adventure_games/1
  def show
  end

  # GET /adventure_games/new
  def new
    @adventure_game = AdventureGame.new
  end

  # GET /adventure_games/1/edit
  def edit
  end

  # POST /adventure_games
  def create
    @adventure_game = AdventureGame.new(adventure_game_params)

    if @adventure_game.save
      @adventure_game.authors.append(current_user)
      redirect_to @adventure_game, notice: 'Adventure game was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /adventure_games/1
  def update
    if @adventure_game.update(adventure_game_params)
      redirect_to @adventure_game, notice: 'Adventure game was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /adventure_games/1
  def destroy
    @adventure_game.destroy
    redirect_to adventure_games_url, notice: 'Adventure game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure_game
      @adventure_game = AdventureGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adventure_game_params
      params.require(:adventure_game).permit(:title, :description,
                                             :genre, :content_rating,
                                             :content_rating_description,
                                             :published)
    end
end
