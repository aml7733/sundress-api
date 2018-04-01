class Vote < ApplicationRecord
  belongs_to :user
  has_many :runway_models
end
