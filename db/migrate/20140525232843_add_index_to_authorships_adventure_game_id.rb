class AddIndexToAuthorshipsAdventureGameId < ActiveRecord::Migration
  def change
    add_index :authorships, :adventure_game_id
  end
end
