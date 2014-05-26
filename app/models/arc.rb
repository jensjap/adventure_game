class Arc < ActiveRecord::Base
  belongs_to :scene
  belongs_to :child_scene, class_name: "Scene"
end
