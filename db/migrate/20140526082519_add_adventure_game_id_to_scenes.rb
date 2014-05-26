class AddAdventureGameIdToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :adventure_game_id, :integer
  end
end
