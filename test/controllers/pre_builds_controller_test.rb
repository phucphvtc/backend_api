require "test_helper"

class PreBuildsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_build = pre_builds(:one)
  end

  test "should get index" do
    get pre_builds_url, as: :json
    assert_response :success
  end

  test "should create pre_build" do
    assert_difference("PreBuild.count") do
      post pre_builds_url, params: { pre_build: { case: @pre_build.case, cooler: @pre_build.cooler, cpu: @pre_build.cpu, gpu: @pre_build.gpu, hdd: @pre_build.hdd, main: @pre_build.main, price: @pre_build.price, price_range_id: @pre_build.price_range_id, psw: @pre_build.psw, purpose_id: @pre_build.purpose_id, ram: @pre_build.ram, ssd: @pre_build.ssd, status: @pre_build.status } }, as: :json
    end

    assert_response :created
  end

  test "should show pre_build" do
    get pre_build_url(@pre_build), as: :json
    assert_response :success
  end

  test "should update pre_build" do
    patch pre_build_url(@pre_build), params: { pre_build: { case: @pre_build.case, cooler: @pre_build.cooler, cpu: @pre_build.cpu, gpu: @pre_build.gpu, hdd: @pre_build.hdd, main: @pre_build.main, price: @pre_build.price, price_range_id: @pre_build.price_range_id, psw: @pre_build.psw, purpose_id: @pre_build.purpose_id, ram: @pre_build.ram, ssd: @pre_build.ssd, status: @pre_build.status } }, as: :json
    assert_response :success
  end

  test "should destroy pre_build" do
    assert_difference("PreBuild.count", -1) do
      delete pre_build_url(@pre_build), as: :json
    end

    assert_response :no_content
  end
end
