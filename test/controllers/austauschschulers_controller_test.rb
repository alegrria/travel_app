require 'test_helper'

class AustauschschulersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @austauschschuler = austauschschulers(:one)
  end

  test "should get index" do
    get austauschschulers_url
    assert_response :success
  end

  test "should get new" do
    get new_austauschschuler_url
    assert_response :success
  end

  test "should create austauschschuler" do
    assert_difference('Austauschschuler.count') do
      post austauschschulers_url, params: { austauschschuler: { arrival_time: @austauschschuler.arrival_time, birthday: @austauschschuler.birthday, departure_time: @austauschschuler.departure_time, email: @austauschschuler.email, family_name: @austauschschuler.family_name, name: @austauschschuler.name } }
    end

    assert_redirected_to austauschschuler_url(Austauschschuler.last)
  end

  test "should show austauschschuler" do
    get austauschschuler_url(@austauschschuler)
    assert_response :success
  end

  test "should get edit" do
    get edit_austauschschuler_url(@austauschschuler)
    assert_response :success
  end

  test "should update austauschschuler" do
    patch austauschschuler_url(@austauschschuler), params: { austauschschuler: { arrival_time: @austauschschuler.arrival_time, birthday: @austauschschuler.birthday, departure_time: @austauschschuler.departure_time, email: @austauschschuler.email, family_name: @austauschschuler.family_name, name: @austauschschuler.name } }
    assert_redirected_to austauschschuler_url(@austauschschuler)
  end

  test "should destroy austauschschuler" do
    assert_difference('Austauschschuler.count', -1) do
      delete austauschschuler_url(@austauschschuler)
    end

    assert_redirected_to austauschschulers_url
  end
end
