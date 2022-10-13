require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get store_index_url

    assert_response :success
    assert_select 'nav a', minimum: 10
    assert_select 'h2', 'Solis Barista Perfetta Plus Espresso Machine'
    assert_select 'div', /\$[,\d]+\.\d\d/
  end
end
