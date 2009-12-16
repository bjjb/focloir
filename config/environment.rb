RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

require 'open-uri'
Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.gem 'nokogiri'
end
