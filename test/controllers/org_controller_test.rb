require 'test_helper'

class OrgControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get org_index_url
    assert_response :success
  end

end
