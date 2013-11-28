require 'test_helper'

class QueryControllerTest < ActionController::TestCase
  test "should get time:integer" do
    get :time:integer
    assert_response :success
  end

  test "should get lat:integer" do
    get :lat:integer
    assert_response :success
  end

  test "should get lon:integer" do
    get :lon:integer
    assert_response :success
  end

  test "should get category:integer" do
    get :category:integer
    assert_response :success
  end

  test "should get radius:integer" do
    get :radius:integer
    assert_response :success
  end

  test "should get page:integer" do
    get :page:integer
    assert_response :success
  end

end
