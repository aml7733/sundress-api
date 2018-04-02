class User < ApplicationRecord
  validates_presence_of :email, :password_digest
  validates_uniqueness_of :email
  has_one :vote
  has_one :runway_model
end
