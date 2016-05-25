require "rails_helper"

RSpec.describe "Creating a Post", type: :feature do
  include PostSteps

  it "should show the 'New Post' header" do
    visit_new_post_page
    i_should_see_new_post_heading
  end

  it "should create and view the newly created post" do
    visit_new_post_page
    i_should_fill_in_post_form
    i_should_see_successfull_creation_message
  end
end
