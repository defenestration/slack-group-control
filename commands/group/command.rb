require 'cksh_commander'

module Group
	class Command < CKSHCommander::Command
		set token: $web_token

		# command with argument
		# /example TEXT
		desc "list", "List groups"
		def list
			set_response_text("Groups: #{groups}")
			# get usergroups usergroups.list
			# verify group exists
			# add user to group usergroups.update
		end

		desc "add", "add [user] to [group]"
		def add(user, group)
			set_response_text("user: #{user}, group: #{group}")
		end

		desc "remove", "remove [user] from [group]"
		def remove(user, group)
			set_response_text("user: #{user}, group: #{group}")
		end

		desc "info", "get info about  [group]"
		def info(group)
			set_response_text("info: #{group}")
		end
	end
end
