class VoteRunwayModel < ApplicationRecord
  belongs_to :vote
  belongs_to :runway_model
end
