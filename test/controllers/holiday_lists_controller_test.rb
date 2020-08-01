require 'test_helper'

class HolidayListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holiday_list = holiday_lists(:one)
  end

  test "should get index" do
    get holiday_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_holiday_list_url
    assert_response :success
  end

  test "should create holiday_list" do
    assert_difference('HolidayList.count') do
      post holiday_lists_url, params: { holiday_list: { date: @holiday_list.date, name: @holiday_list.name } }
    end

    assert_redirected_to holiday_list_url(HolidayList.last)
  end

  test "should show holiday_list" do
    get holiday_list_url(@holiday_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_holiday_list_url(@holiday_list)
    assert_response :success
  end

  test "should update holiday_list" do
    patch holiday_list_url(@holiday_list), params: { holiday_list: { date: @holiday_list.date, name: @holiday_list.name } }
    assert_redirected_to holiday_list_url(@holiday_list)
  end

  test "should destroy holiday_list" do
    assert_difference('HolidayList.count', -1) do
      delete holiday_list_url(@holiday_list)
    end

    assert_redirected_to holiday_lists_url
  end
end
