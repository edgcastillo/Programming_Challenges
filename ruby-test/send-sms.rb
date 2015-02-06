require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC2639173f7e95b322393dba7d1ed270c8'
auth_token = '37e8f1a178cd5bad214947360d41eb05'
client = Twilio::REST::Client.new account_sid, auth_token

from = "+14015195287"

friends = {
	"+14014035264" => "Edwin"
}

friends.each do |key, value|
	client.account.messages.create(
		:from => from,
		:to => key,
		:body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
	)
	puts "Sent message to #{value}"
end