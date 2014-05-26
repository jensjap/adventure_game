class Authorship < ActiveRecord::Base
  belongs_to :adventure_game
  belongs_to :user
end
