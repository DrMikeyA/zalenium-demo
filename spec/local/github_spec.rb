require_relative '../../test_helper'

describe 'GitHub: ', :local do
   let(:driver) {BaseClass.driver}

   before(:all) do
     BaseClass.start_browser
     BaseClass.driver.get 'http://github.com/femisimon'
   end

  it 'should visit femisimon account' do
    expect(driver.title).to include 'Femi Alashi'
    expect(driver.title).to include 'GitHub'
  end

  after(:all) do
    BaseClass.driver.quit
  end
end
