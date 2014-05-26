class CreateAdventureGames < ActiveRecord::Migration
  def change
    create_table :adventure_games do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.string :content_rating
      t.text :content_rating_description
      t.boolean :published

      t.timestamps
    end
  end
end
