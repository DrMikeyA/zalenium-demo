require_relative '../../test_helper'

describe 'Google Remote: ', :remote do

  let(:driver) { BaseClass.driver }

  before(:all) do
    BaseClass.start_remote_browser
    @search_term = 'ruthtech.com'
  end

  context 'Home - ' do

    it 'should verify page title' do
      driver.get 'http://google.com'
      expect(driver.current_url).to include 'google.com'
      expect(driver.title).to include 'Google'
    end
  end

  after(:all) do
    BaseClass.driver.quit
  end
end
