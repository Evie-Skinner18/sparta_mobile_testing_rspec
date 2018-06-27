require 'spec_helper'

describe 'Testing the Budget Watch mobile app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    #start_driver is an appium method
    @driver.start_driver
  end

  #must tell the virtual machine to stop after the tests otherwise you'll use up all
  # the CPU!!!
  after(:all) do
    @driver.driver_quit
  end


  it "should open the budget watch app" do
    #find the element with this ID and it's the first one in the array
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end




end
