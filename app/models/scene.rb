class Scene < ActiveRecord::Base
  has_many :arcs, foreign_key: "scene_id"
  has_many :child_scenes, through: :arcs

  has_many :inverse_arcs, class_name: "Arc", foreign_key: "child_scene_id"
  has_many :parent_scenes, through: :inverse_arcs, source: :scene

  belongs_to :adventure_game

  validates :title, presence: true
end
