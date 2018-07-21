class Vote < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :vote_runway_models
  has_many :runway_models, through: :vote_runway_models
end
