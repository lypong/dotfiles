if status is-interactive
  functions -e fish_command_not_found
  functions -c __fish_default_command_not_found_handler fish_command_not_found
  fish_add_path -g -a $HOME/.local/bin
  complete -f -c remy
  complete -c remy -n __fish_use_subcommand -a install
  complete -c remy -n __fish_use_subcommand -a uninstall
  complete -c remy -n __fish_use_subcommand -a update
  complete -c remy -n __fish_use_subcommand -a search
  complete -c remy -n __fish_use_subcommand -a try
  abbr --add vim nvim
end
