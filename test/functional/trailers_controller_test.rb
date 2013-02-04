require 'test_helper'

class TrailersControllerTest < ActionController::TestCase
  setup do
    @trailer = trailers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trailers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trailer" do
    assert_difference('Trailer.count') do
      post :create, trailer: { driver_id: @trailer.driver_id, lot_location: @trailer.lot_location, truck_id: @trailer.truck_id, unique_id: @trailer.unique_id }
    end

    assert_redirected_to trailer_path(assigns(:trailer))
  end

  test "should show trailer" do
    get :show, id: @trailer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trailer
    assert_response :success
  end

  test "should update trailer" do
    put :update, id: @trailer, trailer: { driver_id: @trailer.driver_id, lot_location: @trailer.lot_location, truck_id: @trailer.truck_id, unique_id: @trailer.unique_id }
    assert_redirected_to trailer_path(assigns(:trailer))
  end

  test "should destroy trailer" do
    assert_difference('Trailer.count', -1) do
      delete :destroy, id: @trailer
    end

    assert_redirected_to trailers_path
  end
end
