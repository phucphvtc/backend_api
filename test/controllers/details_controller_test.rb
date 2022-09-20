require "test_helper"

class DetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get details_url, as: :json
    assert_response :success
  end

  test "should create detail" do
    assert_difference("Detail.count") do
      post details_url, params: { detail: { capacity: @detail.capacity, dimm: @detail.dimm, form: @detail.form, hdd: @detail.hdd, name: @detail.name, price: @detail.price, size: @detail.size, socket: @detail.socket, ssd: @detail.ssd, type_id: @detail.type_id, wattage: @detail.wattage } }, as: :json
    end

    assert_response :created
  end

  test "should show detail" do
    get detail_url(@detail), as: :json
    assert_response :success
  end

  test "should update detail" do
    patch detail_url(@detail), params: { detail: { capacity: @detail.capacity, dimm: @detail.dimm, form: @detail.form, hdd: @detail.hdd, name: @detail.name, price: @detail.price, size: @detail.size, socket: @detail.socket, ssd: @detail.ssd, type_id: @detail.type_id, wattage: @detail.wattage } }, as: :json
    assert_response :success
  end

  test "should destroy detail" do
    assert_difference("Detail.count", -1) do
      delete detail_url(@detail), as: :json
    end

    assert_response :no_content
  end
end
