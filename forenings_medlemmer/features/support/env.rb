require 'rubygems'
require 'selenium-cucumber'
require 'clipboard'

# Store command line arguments
$browser_type = ENV['BROWSER'] || 'ff'
$platform = ENV['PLATFORM'] || 'desktop'
$os_version = ENV['OS_VERSION']
$device_name = ENV['DEVICE_NAME']
$udid = ENV['UDID']
$app_path = ENV['APP_PATH']

# check for valid parameters
validate_parameters $platform, $browser_type, $app_path

# If platform is android or ios create driver instance for mobile browser
if $platform == 'android' or $platform == 'iOS'

  if $browser_type == 'native'
    $browser_type = "Browser"
  end

  if $platform == 'android'
    $device_name, $os_version = get_device_info
  end

  desired_caps = {
    caps:       {
      platformName:  $platform,
      browserName: $browser_type,
      versionNumber: $os_version,
      deviceName: $device_name,
      udid: $udid,
      app: ".//#{$app_path}"
      },
    }

  begin
    $driver = Appium::Driver.new(desired_caps).start_driver
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
else # else create driver instance for desktop browser
  begin
  	profile = Selenium::WebDriver::Firefox::Profile.new
    profile["browser.privatebrowsing.autostart"] = true
    caps = Selenium::WebDriver::Remote::Capabilities.firefox(:firefox_profile => profile)
    #$driver = :selenium-phantomjs
    $driver = Selenium::WebDriver.for(:"#{$browser_type}", :desired_capabilities => caps)
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
end
