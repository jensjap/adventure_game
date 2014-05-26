class AddIndexToArcsSceneId < ActiveRecord::Migration
  def change
    add_index :arcs, :scene_id
  end
end
