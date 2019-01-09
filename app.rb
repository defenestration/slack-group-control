# app.rb

require "sinatra"
require "json"
require "cksh_commander"
require "slack-ruby-client"

$token = ENV["token"]
$web_token = ENV["web_token"]

CKSHCommander.configure do |c|
  c.commands_path = File.expand_path("../commands", __FILE__)
end


Slack.configure do |config|
  config.token = $token
end
client = Slack::Web::Client.new
client.auth_test

groups = client.usergroups_list
puts groups

post "/" do
  content_type :json
  command = params["command"][1..-1]
  puts command
  puts params
  response = CKSHCommander::Runner.run(command, params)
  JSON.dump(response.serialize)
end
