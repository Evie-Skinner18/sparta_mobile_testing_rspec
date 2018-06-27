require 'appium_lib'
require 'pry'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

#options must be in right format. It will sometimes break!
#IT was originaly failing because it had no driver
# sice we didn't config the driver properly
def opts
  {
    caps: {
      platformName: 'Android',
      deviceName: 'emulator5554',
      app: '../native/app/budgetwatch.apk'
    }
  }
end
