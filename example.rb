#!/usr/bin/env ruby

%w(rubygems simplyrets).each {|lib| require lib}
%w(rubygems simplyrets).each {|models| require models}

require "simplyrets"
require "properties_api"
require "listing"

p "SimplyRETS Ruby SDK"

SimplyRets.configure do |config|
  config.username = 'simplyrets'
  config.password = 'simplyrets'
end

# Properties
listings = Properties_api.properties({:minbeds => 2,:brokers => [ "SR1234" ]})
listings.each do |l|
  p l.property['bedrooms']
  p l.office['brokerid']
end

# Single Listing
prop = Properties_api.property(47638976)
p "#{prop.geo['lat']}, #{prop.geo['lng']}"
