require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build :user }

  it { should be_valid }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email).case_insensitive }
end
