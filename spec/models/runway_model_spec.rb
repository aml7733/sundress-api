require 'rails_helper'

RSpec.describe RunwayModel, type: :model do
  it { should belong_to(:vote) }
  it { should belong_to(:user) }
end
