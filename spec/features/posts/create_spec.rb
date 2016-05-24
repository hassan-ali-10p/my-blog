require "rails_helper"

RSpec.describe "Creating a Post", type: :feature do
  include PostSteps

  it "should show the 'New Post' header" do
    visit_new_post_page
    i_should_see_new_post_heading
  end
end
