class User < ApplicationRecord
  has_one :vote
  has_one :runway_model
end
