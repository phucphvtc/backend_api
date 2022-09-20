require "test_helper"

class PriceRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_range = price_ranges(:one)
  end

  test "should get index" do
    get price_ranges_url, as: :json
    assert_response :success
  end

  test "should create price_range" do
    assert_difference("PriceRange.count") do
      post price_ranges_url, params: { price_range: { price: @price_range.price, status: @price_range.status } }, as: :json
    end

    assert_response :created
  end

  test "should show price_range" do
    get price_range_url(@price_range), as: :json
    assert_response :success
  end

  test "should update price_range" do
    patch price_range_url(@price_range), params: { price_range: { price: @price_range.price, status: @price_range.status } }, as: :json
    assert_response :success
  end

  test "should destroy price_range" do
    assert_difference("PriceRange.count", -1) do
      delete price_range_url(@price_range), as: :json
    end

    assert_response :no_content
  end
end
