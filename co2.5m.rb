#!/usr/bin/ruby

require 'net/http'
require 'json'


username = "" # Your Foobot username here
api_key = "" # Your Foobot API key here
device_id = "" # Your Foobot device ID here

uri = URI.parse("http://api.foobot.io/v2/device/#{device_id}/datapoint/0/last/0/?sensorList=co2")

req = Net::HTTP::Get.new(uri)
req['Accept'] = "application/json"
req['X-API-KEY-TOKEN'] = api_key
response = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)
end
if response.is_a?(Net::HTTPSuccess)
  json = JSON.parse(response.body)

  unit = json['units'] ? json['units'][1] : "?"
  value = json['datapoints'] ? json['datapoints'][0][1] : "?"

  puts "#{value} #{unit}"
else
  puts "Error #{response.code}"
end
