require "rubygems"
require "twitter"


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "X1yemK7JXDkkTvgzPfX17JEHo"
  config.consumer_secret     = "JG9tH3D3rpVgZyJWExZflPI6WFOFXOsVS8sPNX1IWxzZPTTQ9N"
  config.access_token        = "102653665-Cln9RPotKTELoUOVD8BPbXW8iodiKpJQ4bQihM4O"
  config.access_token_secret = "b4GQV1LSfxhekb7FyK70hRQSXArxetlmOqoLkpgyR3JUN"
end


client.search("Tominaga", :result_type => "recent").take(10).each do |tweet|
  puts ">>>TEXT #{tweet.text}"
  
  puts ">>>>FROM #{tweet.user.name}"
  puts ">>>>followers_count #{tweet.user.followers_count}"
  puts ">>>>friends_count #{tweet.user.friends_count}"
  puts ">>>>location #{tweet.user.location}"
  
end