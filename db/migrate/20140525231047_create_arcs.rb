class CreateArcs < ActiveRecord::Migration
  def change
    create_table :arcs do |t|
      t.integer :scene_id
      t.integer :child_scene_id

      t.timestamps
    end
  end
end
