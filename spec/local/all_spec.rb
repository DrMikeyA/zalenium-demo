require_relative '../../test_helper'

describe 'All: ', :local do

  let(:driver) { BaseClass.driver }

  before(:all) do
    BaseClass.start_browser
    @search_term = 'ruthtech.com'
  end

  context 'Google - ' do

    it 'should verify page title' do
      driver.get 'http://google.com'
      expect(driver.current_url).to include 'google.com'
      expect(driver.title).to include 'Google'
    end

    it 'should successfully search for term' do
      driver.get 'http://google.com'
      expect(driver.current_url).to include 'google.com'
      driver.find_element(GooglePage::INPUT_SEARCH).send_keys @search_term
      driver.find_element(GooglePage::INPUT_SEARCH).send_keys :enter
      expect(driver.title).to include "#{@search_term} - Google Search"
      expect(driver.find_element(GooglePage::INPUT_SEARCH).attribute(:value)).to eq @search_term
      expect(driver.find_element(GooglePage::SEARCH_RESULTS).displayed?).to be true
    end
  end

  context 'GitHub' do
    before(:each) do
      BaseClass.driver.get 'http://github.com/femisimon'
    end

    it 'should visit femisimon account' do
      expect(driver.title).to include 'Femi Alashi'
      expect(driver.title).to include 'GitHub'
    end

    it 'should have popular repo' do
      expect(driver.find_element(GitHubPage::POPULAR_REPO).displayed?).to be true
    end
  end
end
