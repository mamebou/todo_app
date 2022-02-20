require 'test_helper'

class ChartControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get chart_top_url
    assert_response :success
  end

end
