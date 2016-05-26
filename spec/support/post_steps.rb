module PostSteps
  def visit_new_post_page
    visit("/posts/new")
  end

  def i_should_see_new_post_heading
    expect(page).to have_text("New Post")
  end

  def i_should_fill_in_post_form
    fill_in "Title", with: Faker::Name.title
    fill_in "Description", with: Faker::Hipster.paragraph

    click_on("Submit")
  end

  def i_should_see_successfull_creation_message
    expect(page).to have_text("Post is successfully created")
  end
end
