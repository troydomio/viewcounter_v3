require "test_helper"

class CountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @count = counts(:one)
  end

  test "should get index" do
    get counts_url, as: :json
    assert_response :success
  end

  test "should create count" do
    assert_difference('Count.count') do
      post counts_url, params: { count: { view: @count.view } }, as: :json
    end

    assert_response 201
  end

  test "should show count" do
    get count_url(@count), as: :json
    assert_response :success
  end

  test "should update count" do
    patch count_url(@count), params: { count: { view: @count.view } }, as: :json
    assert_response 200
  end

  test "should destroy count" do
    assert_difference('Count.count', -1) do
      delete count_url(@count), as: :json
    end

    assert_response 204
  end
end
