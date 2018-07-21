class RunwayModel < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :vote_runway_models
  has_many :votes, through: :vote_runway_models
end
