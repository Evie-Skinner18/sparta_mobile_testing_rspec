require 'appium_lib'
require 'pry'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

def opts
  {
    caps: {
      platformName: 'Android',
      deviceName: 'emulator5554',
      app: '../native/app/budgetwatch.apk'
    }
  }
end
