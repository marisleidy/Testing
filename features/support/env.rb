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

Before do //se ejecuta ante cada escenario////siempre inicias el driver de watir que es el que levanta el navegador//
    $driver =  Watir::Browser.new :firefox

end


After do //se ejecuta despues de cada Scenario//

    $driver.close

end


at_exit do //al final de todo//


end