#!/usr/bin/env ruby

require 'net/http'
require 'uri'
require 'json'

def say(message)
  `say -v 'Samantha' --quality 127 #{message}`
end

uri = URI.parse("https://quotes.rest/qod")

response = Net::HTTP.get_response(uri)

if response.code == '200'
  response_body = response.body
  quote = JSON.parse(response_body)['contents']['quotes'][0]['quote']
  say(quote)
  sleep 2
  say("Looks like you left your computer unlocked, uninstall with brew remove say-quotes")
end


