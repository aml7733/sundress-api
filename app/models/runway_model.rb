class RunwayModel < ApplicationRecord
  belongs_to :user
  has_many :vote_runway_models
  has_many :votes, through: :vote_runway_models
end
