require 'rubygems'
require 'watir'
require 'yaml'
require 'fileutils'
require 'json'
require 'csv'
require 'webdriver-user-agent'
require 'net/http'
require 'open-uri'
require 'uri'
require 'statsd-ruby'
require 'time'
require 'base64'
require 'report_builder'

Before do 
    $driver =  Watir::Browser.new :firefox

end


After do

    $driver.close

end


at_exit do 


end