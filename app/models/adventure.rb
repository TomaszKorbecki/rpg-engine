class Adventure < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :universe

  scope :recent, -> { order(created_at: :desc).limit(3) }
end

