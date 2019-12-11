require 'test_helper'

class PiEstimatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pi_estimator = pi_estimators(:one)
  end

  test "should get index" do
    get pi_estimators_url
    assert_response :success
  end

  test "should get new" do
    get new_pi_estimator_url
    assert_response :success
  end

  test "should create pi_estimator" do
    assert_difference('PiEstimator.count') do
      post pi_estimators_url, params: { pi_estimator: {  } }
    end

    assert_redirected_to pi_estimator_url(PiEstimator.last)
  end

  test "should show pi_estimator" do
    get pi_estimator_url(@pi_estimator)
    assert_response :success
  end

  test "should get edit" do
    get edit_pi_estimator_url(@pi_estimator)
    assert_response :success
  end

  test "should update pi_estimator" do
    patch pi_estimator_url(@pi_estimator), params: { pi_estimator: {  } }
    assert_redirected_to pi_estimator_url(@pi_estimator)
  end

  test "should destroy pi_estimator" do
    assert_difference('PiEstimator.count', -1) do
      delete pi_estimator_url(@pi_estimator)
    end

    assert_redirected_to pi_estimators_url
  end
end
