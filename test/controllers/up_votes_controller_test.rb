require 'test_helper'

class UpVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @up_vote = up_votes(:one)
  end

  test "should get index" do
    get up_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_up_vote_url
    assert_response :success
  end

  test "should create up_vote" do
    assert_difference('UpVote.count') do
      post up_votes_url, params: { up_vote: { picture_id: @up_vote.picture_id, user_id: @up_vote.user_id } }
    end

    assert_redirected_to up_vote_url(UpVote.last)
  end

  test "should show up_vote" do
    get up_vote_url(@up_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_up_vote_url(@up_vote)
    assert_response :success
  end

  test "should update up_vote" do
    patch up_vote_url(@up_vote), params: { up_vote: { picture_id: @up_vote.picture_id, user_id: @up_vote.user_id } }
    assert_redirected_to up_vote_url(@up_vote)
  end

  test "should destroy up_vote" do
    assert_difference('UpVote.count', -1) do
      delete up_vote_url(@up_vote)
    end

    assert_redirected_to up_votes_url
  end
end
