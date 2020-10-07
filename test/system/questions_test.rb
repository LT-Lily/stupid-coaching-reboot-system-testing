require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Ask your coach anything"
  end

  test "saying I am going to work yields a positive response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

end
