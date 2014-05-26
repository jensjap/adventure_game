class AddIndexToArcsChildSceneId < ActiveRecord::Migration
  def change
    add_index :arcs, :child_scene_id
  end
end
