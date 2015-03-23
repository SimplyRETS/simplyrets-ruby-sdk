require "uri"

class Properties_api
  basePath = "https://api.simplyrets.com"

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.properties (opts={})
    query_param_keys = [:brokers,:features,:amenities,:agent,:maxarea,
                        :minarea,:minprice,:minbaths,:maxbeds,:minbeds,
                        :neighborhoods,:points,:counties,:status,:type,:q]

    # set default values and merge with input
    options = {
      :brokers => nil ,
      :features => nil ,
      :amenities => nil ,
      :agent => nil ,
      :maxarea => nil ,
      :minarea => nil ,
      :minprice => nil ,
      :minbaths => nil ,
      :maxbeds => nil ,
      :minbeds => nil ,
      :neighborhoods => nil ,
      :points => nil ,
      :counties => nil ,
      :status => nil ,
      :type => nil ,
      :q => nil }.merge(opts)

    #resource path
    path = "/properties".sub('{format}','json')

    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = SimplyRets::Request.new(:GET, path,{:params=>queryopts, :headers=>headers, :body=>post_body }).make.body
    response.map {|response|Listing.new(response)}

  end

  def self.property (mls_id=nil,opts={})
     query_param_keys = []

     # verify existence of params
     raise "mls_id is required" if mls_id.nil?

     # set default values and merge with input
     options = {
       :mls_id => nil
     }.merge(opts)

     #resource path
     path = "/properties/{mlsId}".sub('{format}','json').sub('{' + 'mlsId' + '}', escapeString(mls_id))

     # pull querystring keys from options
     queryopts = options.select do |key,value|
       query_param_keys.include? key
     end

     headers = nil
     post_body = nil
     response = SimplyRets::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
     Listing.new(response)

  end

end
