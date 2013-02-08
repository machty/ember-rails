
require 'test_helper'

class EmblemTemplateTest < ActionController::IntegrationTest

  test "asset pipeline should serve ember emblem template" do
    get "/assets/templates/emblem_test.js"
    assert_response :success
    assert_match /Ember\.TEMPLATES\["emblem_test"\] = Ember\.Handlebars\.template\(function .*"test"/m, @response.body
  end

  #test "asset pipeline should serve raw handlebars emblem template" do
    #get "/assets/templates/emblem_test.js"
    #assert_response :success
    #assert_match /Ember\.TEMPLATES\["emblem_raw_test"\] = Handlebars\.template\(function .*"test"/m, @response.body
  #end

end
