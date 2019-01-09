require 'cksh_commander'

module Logout
	class Command < CKSHCommander::Command
		set token: $web_token

		# command with argument
		# /example TEXT
		desc "[group]", "Log your user out of [group]"
		def ___(text)
			if text.empty?
				set_response_text("Usage: /logout <group> . Remove your user from <group>")
			else
				respond_in_channel!
				set_response_text("Todo: Removing you to group: #{text}")
				# get usergroups usergroups.list
				# verify group exists
				# add user to group usergroups.update
			end
		end
	end
end
