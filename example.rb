#!/usr/bin/env ruby

%w(rubygems simplyrets).each {|lib| require lib}
%w(rubygems simplyrets).each {|models| require models}

require "simplyrets"

p "SimplyRets Ruby SDK"

SimplyRetsClient::SimplyRets.configure do |config|
  config.username = 'simplyrets'
  config.password = 'simplyrets'
end

# Properties
listings = SimplyRetsClient::Properties_api.properties({:minbeds => 2})
listings.each do |l|
  p l.property
  p l.property.bedrooms
  p l.office.brokerid
end

p "Single Property"
# Single Listing
prop = SimplyRetsClient::Properties_api.property(63423516)
p prop
p prop.geo.lat
