require 'test_helper'

class BabyUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_user = baby_users(:one)
  end

  test "should get index" do
    get baby_users_url, as: :json
    assert_response :success
  end

  test "should create baby_user" do
    assert_difference('BabyUser.count') do
      post baby_users_url, params: { baby_user: { active: @baby_user.active, baby_id: @baby_user.baby_id, role: @baby_user.role, user_id: @baby_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show baby_user" do
    get baby_user_url(@baby_user), as: :json
    assert_response :success
  end

  test "should update baby_user" do
    patch baby_user_url(@baby_user), params: { baby_user: { active: @baby_user.active, baby_id: @baby_user.baby_id, role: @baby_user.role, user_id: @baby_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy baby_user" do
    assert_difference('BabyUser.count', -1) do
      delete baby_user_url(@baby_user), as: :json
    end

    assert_response 204
  end
end
