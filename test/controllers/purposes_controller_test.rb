require "test_helper"

class PurposesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purpose = purposes(:one)
  end

  test "should get index" do
    get purposes_url, as: :json
    assert_response :success
  end

  test "should create purpose" do
    assert_difference("Purpose.count") do
      post purposes_url, params: { purpose: { name: @purpose.name, status: @purpose.status } }, as: :json
    end

    assert_response :created
  end

  test "should show purpose" do
    get purpose_url(@purpose), as: :json
    assert_response :success
  end

  test "should update purpose" do
    patch purpose_url(@purpose), params: { purpose: { name: @purpose.name, status: @purpose.status } }, as: :json
    assert_response :success
  end

  test "should destroy purpose" do
    assert_difference("Purpose.count", -1) do
      delete purpose_url(@purpose), as: :json
    end

    assert_response :no_content
  end
end
