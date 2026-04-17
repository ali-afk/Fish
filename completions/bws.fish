# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_bws_global_optspecs
	string join \n o/output= c/color= t/access-token= f/config-file= p/profile= u/server-url= h/help V/version
end

function __fish_bws_needs_command
	# Figure out if the current invocation already has a command.
	set -l cmd (commandline -opc)
	set -e cmd[1]
	argparse -s (__fish_bws_global_optspecs) -- $cmd 2>/dev/null
	or return
	if set -q argv[1]
		# Also print the command, so this can be used to figure out what it is.
		echo $argv[1]
		return 1
	end
	return 0
end

function __fish_bws_using_subcommand
	set -l cmd (__fish_bws_needs_command)
	test -z "$cmd"
	and return 1
	contains -- $cmd[1] $argv
end

complete -c bws -n "__fish_bws_needs_command" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_needs_command" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_needs_command" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_needs_command" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_needs_command" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_needs_command" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_needs_command" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_needs_command" -s V -l version -d 'Print version'
complete -c bws -n "__fish_bws_needs_command" -f -a "config"
complete -c bws -n "__fish_bws_needs_command" -f -a "completions"
complete -c bws -n "__fish_bws_needs_command" -f -a "project"
complete -c bws -n "__fish_bws_needs_command" -f -a "secret"
complete -c bws -n "__fish_bws_needs_command" -f -a "run"
complete -c bws -n "__fish_bws_needs_command" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand config" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand config" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand config" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand config" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand config" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand config" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand config" -s d -l delete
complete -c bws -n "__fish_bws_using_subcommand config" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand completions" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand completions" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand completions" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand completions" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand completions" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand completions" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand completions" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "list"
complete -c bws -n "__fish_bws_using_subcommand project; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from delete" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -l name -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from edit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from get" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "list"
complete -c bws -n "__fish_bws_using_subcommand project; and __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "list"
complete -c bws -n "__fish_bws_using_subcommand secret; and not __fish_seen_subcommand_from create delete edit get list help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -l note -d 'An optional note to add to the secret' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from delete" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -l key -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -l value -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -l note -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -l project-id -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from edit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from get" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "list"
complete -c bws -n "__fish_bws_using_subcommand secret; and __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand run" -l shell -d 'The shell to use' -r
complete -c bws -n "__fish_bws_using_subcommand run" -l project-id -d 'The ID of the project to use' -r
complete -c bws -n "__fish_bws_using_subcommand run" -s o -l output -d 'Output format' -r -f -a "json\t''
yaml\t''
env\t''
table\t''
tsv\t''
none\t''"
complete -c bws -n "__fish_bws_using_subcommand run" -s c -l color -d 'Use colors in the output' -r -f -a "no\t'Force colors off'
yes\t'Force colors on'
auto\t'Automatically detect if colors are supported in the terminal'"
complete -c bws -n "__fish_bws_using_subcommand run" -s t -l access-token -d 'Specify access token for the service account' -r
complete -c bws -n "__fish_bws_using_subcommand run" -s f -l config-file -d '[default: ~/.config/bws/config] Config file to use' -r -F
complete -c bws -n "__fish_bws_using_subcommand run" -s p -l profile -d 'Profile to use from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand run" -s u -l server-url -d 'Override the server URL from the config file' -r
complete -c bws -n "__fish_bws_using_subcommand run" -l no-inherit-env -d 'Don\'t inherit environment variables from the current shell'
complete -c bws -n "__fish_bws_using_subcommand run" -l uuids-as-keynames -d 'Use the secret UUID (in its POSIX form) instead of the key name for the environment variable'
complete -c bws -n "__fish_bws_using_subcommand run" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "config"
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "completions"
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "project"
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "secret"
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "run"
complete -c bws -n "__fish_bws_using_subcommand help; and not __fish_seen_subcommand_from config completions project secret run help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from project" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from project" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from project" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from project" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from project" -f -a "list"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from secret" -f -a "create"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from secret" -f -a "delete"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from secret" -f -a "edit"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from secret" -f -a "get"
complete -c bws -n "__fish_bws_using_subcommand help; and __fish_seen_subcommand_from secret" -f -a "list"
