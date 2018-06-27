require 'appium-lib'
require 'pry'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

def caps
  {
    :platformName => 'Android',
    :deviceName => 'emulator5554',
    :app => '../app/budgetwatch.apk'
  }
end
