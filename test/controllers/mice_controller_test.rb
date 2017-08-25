require 'test_helper'

class MiceControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mouse = mice(:one)
  end

  test "should get index" do
    get mice_url, as: :json
    assert_response :success
  end

  test "should create mouse" do
    assert_difference('Mouse.count') do
      post mice_url, params: { mouse: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mouse" do
    get mouse_url(@mouse), as: :json
    assert_response :success
  end

  test "should update mouse" do
    patch mouse_url(@mouse), params: { mouse: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mouse" do
    assert_difference('Mouse.count', -1) do
      delete mouse_url(@mouse), as: :json
    end

    assert_response 204
  end
end
