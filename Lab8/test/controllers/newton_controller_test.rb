require "test_helper"

class NewtonControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get newton_input_url
    assert_response :success
  end

  test "should get view" do
    get newton_view_url
    assert_response :success
  end

  test 'should get 3.16 for 10' do
    get '/newton/view', params: { number: '10' }
    assert_in_delta assigns[:answer], 3.16, 10**-2
  end

  test 'should get 11 for 121' do
    get '/newton/view', params: { number: '121' }
    assert_in_delta assigns[:answer], 11, 10**-2
  end
end
