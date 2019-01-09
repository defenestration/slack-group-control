require 'cksh_commander'

module Login
	class Command < CKSHCommander::Command
		set token: $web_token

		# command with argument
		# /example TEXT
		desc "[group]", "Log your user into [group]"
		def ___(text)
			if text.empty?
				set_response_text("Usage: /login <group> . Add your user into <group>")
			else
				respond_in_channel!
				set_response_text("Todo: Adding you to group: #{text}")
				# get usergroups usergroups.list
				# verify group exists
				# add user to group usergroups.update
			end
		end
	end
end
