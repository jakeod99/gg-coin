require "test_helper"

class PrizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prize = prizes(:one)
  end

  test "should get index" do
    get prizes_url
    assert_response :success
  end

  test "should get new" do
    get new_prize_url
    assert_response :success
  end

  test "should create prize" do
    assert_difference("Prize.count") do
      post prizes_url, params: { prize: { activation_status: @prize.activation_status, description: @prize.description, lose_payout: @prize.lose_payout, name: @prize.name, win_payout: @prize.win_payout } }
    end

    assert_redirected_to prize_url(Prize.last)
  end

  test "should show prize" do
    get prize_url(@prize)
    assert_response :success
  end

  test "should get edit" do
    get edit_prize_url(@prize)
    assert_response :success
  end

  test "should update prize" do
    patch prize_url(@prize), params: { prize: { activation_status: @prize.activation_status, description: @prize.description, lose_payout: @prize.lose_payout, name: @prize.name, win_payout: @prize.win_payout } }
    assert_redirected_to prize_url(@prize)
  end

  test "should destroy prize" do
    assert_difference("Prize.count", -1) do
      delete prize_url(@prize)
    end

    assert_redirected_to prizes_url
  end
end
