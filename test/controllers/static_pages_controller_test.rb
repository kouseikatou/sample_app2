require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    #  get root_urlとはRailsヘルパーで/　に対してアクセスするヘルパー関数
    get root_url
    assert_response :success
  end
  test "should get home" do
    # GET /static_pages/home
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    # GET /static_pages/help
    get static_pages_help_url
    # assert = 何かか届くはすだ
    assert_response :success
    assert_select "title" , "Help | #{@base_title}"

  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title" , "About | #{@base_title}"
  end
end
