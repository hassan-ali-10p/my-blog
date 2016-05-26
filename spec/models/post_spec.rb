require 'rails_helper'

RSpec.describe Post, type: :model do
  it "has a valid factory" do
    post = FactoryGirl.create(:post)
  end

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
end
