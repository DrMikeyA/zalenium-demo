require_relative '../../test_helper'

describe 'Google Remote: ', :remote do

  let(:driver) { BaseClass.driver }

  before(:all) do
    BaseClass.start_remote_browser
    @search_term = 'ruthtech.com'
  end

  context 'Home TWO- ' do

    it 'should successfully search term' do
      driver.get 'http://google.com'
      expect(driver.current_url).to include 'google.com'
      driver.find_element(GooglePage::INPUT_SEARCH).send_keys @search_term
      driver.find_element(GooglePage::INPUT_SEARCH).send_keys :enter
      expect(driver.title).to include "#{@search_term} - Google Search"
      expect(driver.find_element(GooglePage::INPUT_SEARCH).attribute(:value)).to eq @search_term
      expect(driver.find_element(GooglePage::SEARCH_RESULTS).displayed?).to be true
    end
  end

  after(:all) do
    BaseClass.driver.quit
  end
end
