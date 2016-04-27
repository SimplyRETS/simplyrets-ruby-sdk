=begin
SimplyRETS API

The SimplyRETS API is an exciting step towards making it easier for\ndevelopers and real estate agents to build something awesome with\nreal estate data!\n\nThe documentation below makes live requests to our API using the\ntrial data. To get set up with the API using live MLS data, you\nmust have RETS credentials from your MLS, which you can then use to\ncreate an app with SimplyRETS. For more information on that\nprocess, please see our [FAQ](https://simplyrets.com/faq), [Getting\nStarted](https://simplyrets.com/blog/getting-set-up.html) page, or\n[contact us](https://simplyrets.com/\\#home-contact).\n\nBelow you'll find the API endpoints, query parameters, response bodies,\nand other information about using the SimplyRETS API. You can run\nqueries by clicking the 'Try it Out' button at the bottom of each\nsection.\n\n### Authentication\nThe SimplyRETS API uses Basic Authentication. When you create an\napp, you'll get a set of API credentials to access your\nlistings. If you're trying out the test data, you can use\n`simplyrets:simplyrets` for connecting to the API.\n\n### Media Types\nThe SimplyRETS API uses the 'Accept' header to allow clients to\ncontrol media types (content versions). We maintain backwards\ncompatibility with API clients by allowing them to specify a\ncontent version. We highly recommend setting and explicity media\ntype when your application reaches production. Both the structure\nand content of our API response bodies is subject to change so we\ncan add new features while respecting the stability of applications\nwhich have already been developed.\n\nTo always use the latest SimplyRETS content version, simply use\n`application/json` in your application `Accept` header.\n\nIf you want to pin your clients media type to a specific version,\nyou can use the vendor-specific SimplyRETS media type, e.g.\n`application/vnd.simplyrets-v0.1+json\"`\n\nTo view all valid content-types for making an `OPTIONS`, make a\nrequest to the SimplyRETS api root\n\n`curl -XOPTIONS -u simplyrets:simplyrets https://api.simplyrets.com/`\n\nThe default media types used in our API responses may change in the\nfuture. If you're building an application and care about the\nstability of the API, be sure to request a specific media type in the\nAccept header as shown in the examples below.\n\nThe wordpress plugin automatically sets the `Accept` header for the\ncompatible SimplyRETS media types.\n\n### Pagination\nThere a few pieces of useful information about each request stored\nin the HTTP Headers:\n\n- `X-Total-Count` shows you the total amount of listings that match\n  your current query.\n- `Link` contains pre-built pagination links for accessing the next\n'page' of listings that match your query. Read more about that\n[here](https://simplyrets.com/blog/api-pagination.html).\n

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

module SimplyRetsClient
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        arg.each do |k, v|
          if k.to_s == 'message'
            super v
          else
            instance_variable_set "@#{k}", v
          end
        end
      else
        super arg
      end
    end
  end
end
