require 'test_helper'

class SnakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snake = snakes(:one)
  end

  test "should get index" do
    get snakes_url
    assert_response :success
  end

  test "should get new" do
    get new_snake_url
    assert_response :success
  end

  test "should create snake" do
    assert_difference('Snake.count') do
      post snakes_url, params: { snake: { first_name: @snake.first_name } }
    end

    assert_redirected_to snake_url(Snake.last)
  end

  test "should show snake" do
    get snake_url(@snake)
    assert_response :success
  end

  test "should get edit" do
    get edit_snake_url(@snake)
    assert_response :success
  end

  test "should update snake" do
    patch snake_url(@snake), params: { snake: { first_name: @snake.first_name } }
    assert_redirected_to snake_url(@snake)
  end

  test "should destroy snake" do
    assert_difference('Snake.count', -1) do
      delete snake_url(@snake)
    end

    assert_redirected_to snakes_url
  end
end
