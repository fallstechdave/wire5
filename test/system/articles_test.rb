require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Body", with: @article.body
    fill_in "Country", with: @article.country
    fill_in "Date published", with: @article.date_published
    fill_in "Doc num", with: @article.doc_num
    check "Has attachments" if @article.has_attachments
    fill_in "Image caption", with: @article.image_caption
    fill_in "Non state actor", with: @article.non_state_actor
    fill_in "Producing office", with: @article.producing_office
    fill_in "Summary", with: @article.summary
    fill_in "Title", with: @article.title
    fill_in "Topic", with: @article.topic
    check "Worldwide" if @article.worldwide
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this article", match: :first

    fill_in "Body", with: @article.body
    fill_in "Country", with: @article.country
    fill_in "Date published", with: @article.date_published
    fill_in "Doc num", with: @article.doc_num
    check "Has attachments" if @article.has_attachments
    fill_in "Image caption", with: @article.image_caption
    fill_in "Non state actor", with: @article.non_state_actor
    fill_in "Producing office", with: @article.producing_office
    fill_in "Summary", with: @article.summary
    fill_in "Title", with: @article.title
    fill_in "Topic", with: @article.topic
    check "Worldwide" if @article.worldwide
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
