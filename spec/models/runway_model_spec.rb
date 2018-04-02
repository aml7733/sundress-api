require 'rails_helper'

RSpec.describe RunwayModel, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:vote_runway_models) }
  it { should have_many(:votes) }
end
