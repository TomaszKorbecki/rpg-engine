class Universe < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :game_master, class_name: "User"
  has_many   :adventures

  def recent_adventures
    adventures.recent
  end
end

