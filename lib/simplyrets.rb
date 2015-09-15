# SimplyRets common files
require 'simplyrets/simplyrets'
require 'simplyrets/simplyrets/configuration'
require 'simplyrets/simplyrets/api_error'
require 'simplyrets/simplyrets/request'
require 'simplyrets/simplyrets/response'
require 'simplyrets/simplyrets/version'

# Models
require 'simplyrets/models/base_object'
require 'simplyrets/models/street_address'
require 'simplyrets/models/property'
require 'simplyrets/models/listing'
require 'simplyrets/models/open_house'
require 'simplyrets/models/office'
require 'simplyrets/models/agent'
require 'simplyrets/models/sales'
require 'simplyrets/models/school'
require 'simplyrets/models/parking'
require 'simplyrets/models/contact_information'
require 'simplyrets/models/tax'
require 'simplyrets/models/geographic_data'
require 'simplyrets/models/broker'
require 'simplyrets/models/mls_information'
require 'simplyrets/models/error'

# APIs
require 'simplyrets/api/default_api'

module SimplyRetsClient
  # Initialize the default configuration
  SimplyRets.configuration = SimplyRets::Configuration.new
  SimplyRets.configure { |config| }
end
