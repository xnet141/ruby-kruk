require_relative 'endpoint'

endpoint = Endpoint.new('http://example.com', {query: 'str'})

endpoint.get 