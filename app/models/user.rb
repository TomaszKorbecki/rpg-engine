class User < ApplicationRecord
  GAME_MASTER = "game_master".freeze
  PLAYER      = "player".freeze

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :universes, foreign_key: :game_master_id

  def game_master?
    role == GAME_MASTER
  end

  def player?
    role == PLAYER
  end
end
