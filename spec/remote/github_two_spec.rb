require_relative '../../test_helper'

describe 'GitHub Two Remote: ', :remote do
   let(:driver) {BaseClass.driver}

   before(:all) do
     BaseClass.start_remote_browser
     BaseClass.driver.get 'http://github.com/femisimon'
   end

  it 'should have popular repo' do
    expect(driver.find_element(GitHubPage::POPULAR_REPO).displayed?).to be true
  end

   after(:all) do
     BaseClass.driver.quit
   end
end
