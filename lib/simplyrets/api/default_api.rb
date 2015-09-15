require "uri"

module SimplyRetsClient
  class Properties_api

    # The SimplyRets Listings API
    # This is the main endpoint for accessing your properties. View\nall of the available query parameters and make requests below!\nThe API uses Basic Authorization, which most HTTP libraries\nwill handle for you. To use the test test data (which is what\nthis pages uses), you can use the api key `simplyrets` and\nsecret `simplyrets`. Note that the test listings are not live\nMLS listings but the data, query parameters, and response\nbodies will all work the same.\n
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q A fuzzy keyword search.\n
    # @option opts [Integer] :minprice Filter listings by a minimum price.\n
    # @option opts [Integer] :maxprice Filter listings by a maximum price\n
    # @option opts [String] :agent Filter the listings returned by an agent ID.  Note, the\nAgent ID is provided by your MLS.\n
    # @option opts [Integer] :minarea Filter listings by a minimum area size in Sq Ft.\n
    # @option opts [Integer] :maxarea Filter listings by a maximum area size in Sq Ft.\n
    # @option opts [Integer] :minbaths Filter listings by a minimum number of bathrooms.\n
    # @option opts [Integer] :maxbaths Filter listings by a maximum number of bathrooms.\n
    # @option opts [Integer] :mineds Filter listings by a minimum number of bedrooms.\n
    # @option opts [Integer] :maxbeds Filter listings by a maximum number of bedrooms.\n
    # @option opts [Integer] :limit Set the number of listings to return in the response.\nThis defaults to 20 listings, and can be a maximum of 50.\nTo paginate through to the next page of listings, take a\nlook at the `offset` parameter, or the Link in the HTTP\nHeader.\n
    # @option opts [Integer] :offset Used as a cursor for pagination. Increase the offset parameter\nby the limit to go to the next \&quot;page\&quot; of listings. Also take\na look at the Link HTTP Header for pre-built pagination.\n
    # @option opts [Array<String>] :brokers Filter the listings returned by brokerage with a Broker ID.\nYou can specific multiple broker parameters. Note, the Broker\nID is provided by your MLS.\n
    # @option opts [Array<String>] :features Filter the listings returned by specific features.  You\ncan specify multiple.\n
    # @option opts [Array<String>] :amenities Filter the listings returned by specific amenities.  You\ncan specify multiple amenities.\n
    # @option opts [Array<String>] :neighborhoods Filter the listings returned by specific neighborhoods and\nsubdivisions. You can specify multiple.\n
    # @option opts [Array<String>] :points A list of latitude longitude coordinates which contain\nthe property. Our documentation generator does not yet\nsupport using a list of parameters.\n
    # @option opts [Array<String>] :counties Filter the listings returned by specific counties. You can\nspecify multiple.\n
    # @option opts [String] :status Request listings by a specific status. This defaults to\nactive and you can only specify one status in a single\nquery.\n
    # @option opts [String] :type Request listings by a specific property type. This\ndefaults to Residential, and you can only specify one type\nin a single query.\n
    # @option opts [String] :sort Sort the response by a specific field. Values starting\nwith a minus (-) denote descending order, while the others\nare ascending.\n
    # @option opts [String] :include Include a limited set of extra fields which are not found\nin the default response body\n- &#39;rooms&#39; include parameter will include\n   any additional rooms as a list.\n- &#39;pool&#39; includes an additional pool description\n- &#39;association&#39; includes additional home owners association data\n
    # @return [Array<Listing>]
    def self.properties(opts = {})
      if SimplyRets.configuration.debug
        SimplyRets.logger.debug "Calling API: DefaultApi#properties ..."
      end

      if opts[:'status'] && !['Active', 'Pending', 'Closed'].include?(opts[:'status'])
        fail 'invalid value for "status", must be one of Active, Pending, Closed'
      end

      if opts[:'type'] && !['Residential', 'Rential', 'Multifamily', 'Condominium', 'Commercial', 'Land'].include?(opts[:'type'])
        fail 'invalid value for "type", must be one of Residential, Rential, Multifamily, Condominium, Commercial, Land'
      end

      if opts[:'sort'] && !['listprice', '-listprice', 'listdate', '-listdate', 'beds', '-beds', 'baths', '-baths'].include?(opts[:'sort'])
        fail 'invalid value for "sort", must be one of listprice, -listprice, listdate, -listdate, beds, -beds, baths, -baths'
      end

      if opts[:'include'] && !['pool', 'rooms', 'association'].include?(opts[:'include'])
        fail 'invalid value for "include", must be one of pool, rooms, association'
      end

      # resource path
      path = "/properties".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if opts[:'q']
      query_params[:'minprice'] = opts[:'minprice'] if opts[:'minprice']
      query_params[:'maxprice'] = opts[:'maxprice'] if opts[:'maxprice']
      query_params[:'agent'] = opts[:'agent'] if opts[:'agent']
      query_params[:'minarea'] = opts[:'minarea'] if opts[:'minarea']
      query_params[:'maxarea'] = opts[:'maxarea'] if opts[:'maxarea']
      query_params[:'minbaths'] = opts[:'minbaths'] if opts[:'minbaths']
      query_params[:'maxbaths'] = opts[:'maxbaths'] if opts[:'maxbaths']
      query_params[:'mineds'] = opts[:'mineds'] if opts[:'mineds']
      query_params[:'maxbeds'] = opts[:'maxbeds'] if opts[:'maxbeds']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'brokers'] = opts[:'brokers'] if opts[:'brokers']
      query_params[:'features'] = opts[:'features'] if opts[:'features']
      query_params[:'amenities'] = opts[:'amenities'] if opts[:'amenities']
      query_params[:'neighborhoods'] = opts[:'neighborhoods'] if opts[:'neighborhoods']
      query_params[:'points'] = opts[:'points'] if opts[:'points']
      query_params[:'counties'] = opts[:'counties'] if opts[:'counties']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']
      query_params[:'include'] = opts[:'include'] if opts[:'include']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = SimplyRets::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = SimplyRets::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['basicAuth']
      response = SimplyRets::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Listing>')
      if SimplyRets.configuration.debug
        SimplyRets.logger.debug "API called: DefaultApi#properties. Result: #{result.inspect}"
      end
      result
    end

    # Single Listing Endpoint
    # Use this endpoint for accessing a single listing.\n
    # @param listing_id A listings listingId (unique indentifier).
    # @param [Hash] opts the optional parameters
    # @return [Listing]
    def self.property(listing_id, opts = {})
      if SimplyRets.configuration.debug
        SimplyRets.logger.debug "Calling API: DefaultApi#property ..."
      end

      # verify the required parameter 'listing_id' is set
      fail "Missing the required parameter 'listing_id' when calling property" if listing_id.nil?

      # resource path
      path = "/properties/{listingId}".sub('{format}','json').sub('{' + 'listingId' + '}', listing_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = SimplyRets::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = SimplyRets::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil


      auth_names = ['basicAuth']
      response = SimplyRets::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Listing')
      if SimplyRets.configuration.debug
        SimplyRets.logger.debug "API called: DefaultApi#property. Result: #{result.inspect}"
      end
      result
    end
  end
end
