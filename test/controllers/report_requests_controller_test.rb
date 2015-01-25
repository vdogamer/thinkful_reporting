require 'test_helper'

class ReportRequestsControllerTest < ActionController::TestCase
  setup do
    @report_request = report_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_request" do
    assert_difference('ReportRequest.count') do
      post :create, report_request: { request: @report_request.request }
    end

    assert_redirected_to report_request_path(assigns(:report_request))
  end

  test "should show report_request" do
    get :show, id: @report_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_request
    assert_response :success
  end

  test "should update report_request" do
    patch :update, id: @report_request, report_request: { request: @report_request.request }
    assert_redirected_to report_request_path(assigns(:report_request))
  end

  test "should destroy report_request" do
    assert_difference('ReportRequest.count', -1) do
      delete :destroy, id: @report_request
    end

    assert_redirected_to report_requests_path
  end
end
