module PostSteps
  def visit_new_post_page
    visit("/posts/new")
  end

  def i_should_see_new_post_heading
    expect(page).to have_text("New Post")
  end
end
