require 'spec_helper'

describe "Testing the user's journey from adding a budget on the Budget Watch mobile app" do

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

  it "should allow the user to add a new budget" do
    find_element(:id, 'protect.budgetwatch:id/menu').click
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('Cheese Budget')
  end

  it "should allow the user to save that budget" do
    pending
  end

  it "should allow the user to view their budget on the homepage" do
    pending
  end

  #write a test for adding a budget. Entering budget, saving it, and seeing it on
  # thr app's homepage

  #Open app, add a budget, save budget, view budget.




end