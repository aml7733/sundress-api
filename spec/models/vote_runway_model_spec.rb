require 'rails_helper'

RSpec.describe VoteRunwayModel, type: :model do
  it { should belong_to(:vote) }
  it { should belong_to(:runway_model) }
end
