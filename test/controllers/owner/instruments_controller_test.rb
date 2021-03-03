require 'test_helper'

class Owner::InstrumentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_instruments_index_url
    assert_response :success
  end

  test "should get new" do
    get owner_instruments_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_instruments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get owner_instruments_destroy_url
    assert_response :success
  end

end
