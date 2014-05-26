class AddIndexToScenesAdventureGameId < ActiveRecord::Migration
  def change
    add_index :scenes, :adventure_game_id
  end
end
