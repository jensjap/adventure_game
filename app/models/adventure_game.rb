class AdventureGame < ActiveRecord::Base
  has_many :authorships
  has_many :authors, through: :authorships, source: :user

  validates :title, presence: true
  validates :genre, presence: true
  validates :content_rating, presence: true
end
