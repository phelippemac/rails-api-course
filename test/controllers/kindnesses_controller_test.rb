require 'test_helper'

class KindnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kindness = kindnesses(:one)
  end

  test "should get index" do
    get kindnesses_url, as: :json
    assert_response :success
  end

  test "should create kindness" do
    assert_difference('Kindness.count') do
      post kindnesses_url, params: { kindness: { description: @kindness.description } }, as: :json
    end

    assert_response 201
  end

  test "should show kindness" do
    get kindness_url(@kindness), as: :json
    assert_response :success
  end

  test "should update kindness" do
    patch kindness_url(@kindness), params: { kindness: { description: @kindness.description } }, as: :json
    assert_response 200
  end

  test "should destroy kindness" do
    assert_difference('Kindness.count', -1) do
      delete kindness_url(@kindness), as: :json
    end

    assert_response 204
  end
end
