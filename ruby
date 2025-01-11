require 'net/http'
require 'json'
require 'uri'

url = URI.parse('https://api.example.com/data')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url.request_uri)
request['Authorization'] = 'Bearer YOUR_TOKEN'
request['Content-Type'] = 'application/json'

response = http.request(request)
data = JSON.parse(response.body)
puts data
