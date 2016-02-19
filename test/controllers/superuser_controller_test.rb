require 'test_helper'

class SuperuserControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get superuser_post_url
    assert_response :success
  end

end
