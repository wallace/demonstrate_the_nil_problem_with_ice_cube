require "test_helper"

class DemonstrateIssueWithNilTest < Capybara::Rails::TestCase
  test "sanity" do
    visit new_sample_model_path
    click_button 'Create Sample model'
  end
end
