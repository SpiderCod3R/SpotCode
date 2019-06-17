require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get album_show_url
    assert_response :success
  end

end
