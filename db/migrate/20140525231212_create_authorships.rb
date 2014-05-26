class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.integer :user_id
      t.integer :adventure_game_id
      t.boolean :primary

      t.timestamps
    end
  end
end
