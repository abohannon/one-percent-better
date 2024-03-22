require "test_helper"

class HabitCompletionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit_completion = habit_completions(:one)
  end

  test "should get index" do
    get habit_completions_url, as: :json
    assert_response :success
  end

  test "should create habit_completion" do
    assert_difference("HabitCompletion.count") do
      post habit_completions_url, params: { habit_completion: { completed_on: @habit_completion.completed_on, habit_id: @habit_completion.habit_id, status: @habit_completion.status } }, as: :json
    end

    assert_response :created
  end

  test "should show habit_completion" do
    get habit_completion_url(@habit_completion), as: :json
    assert_response :success
  end

  test "should update habit_completion" do
    patch habit_completion_url(@habit_completion), params: { habit_completion: { completed_on: @habit_completion.completed_on, habit_id: @habit_completion.habit_id, status: @habit_completion.status } }, as: :json
    assert_response :success
  end

  test "should destroy habit_completion" do
    assert_difference("HabitCompletion.count", -1) do
      delete habit_completion_url(@habit_completion), as: :json
    end

    assert_response :no_content
  end
end
