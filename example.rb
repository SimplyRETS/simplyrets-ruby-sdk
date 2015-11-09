#!/usr/bin/env ruby

%w(rubygems simplyrets).each {|lib| require lib}
%w(rubygems simplyrets).each {|models| require models}

require "simplyrets"

p "SimplyRets Ruby SDK"

SimplyRetsClient::SimplyRets.configure do |config|
  config.username = 'simplyrets'
  config.password = 'simplyrets'
end

points = [ "29.723837146389066,-95.69778442382812", "29.938275329718987,-95.69778442382812", "29.938275329718987,-95.32974243164061", "29.723837146389066,-95.32974243164061" ]

# Properties
listings = SimplyRetsClient::Properties_api.properties({:minbeds => 2, :points => points})
listings.each do |l|
  p l.property
  p l.property.bedrooms
  p l.office.brokerid
end

# Single Listing
prop = SimplyRetsClient::Properties_api.property(1005221)
p prop
p prop.geo.lat
