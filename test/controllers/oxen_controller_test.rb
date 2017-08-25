require 'test_helper'

class OxenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ox = oxen(:one)
  end

  test "should get index" do
    get oxen_url, as: :json
    assert_response :success
  end

  test "should create ox" do
    assert_difference('Ox.count') do
      post oxen_url, params: { ox: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show ox" do
    get ox_url(@ox), as: :json
    assert_response :success
  end

  test "should update ox" do
    patch ox_url(@ox), params: { ox: {  } }, as: :json
    assert_response 200
  end

  test "should destroy ox" do
    assert_difference('Ox.count', -1) do
      delete ox_url(@ox), as: :json
    end

    assert_response 204
  end
end
