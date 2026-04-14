function tsl --description 'Create multi-pane swarm layout'
  if test (count $argv) -lt 2
    echo "Usage: tsl <pane_count> <command>"
    return 1
  end
  if test -z "$TMUX"
    echo "You must start tmux to use tsl."
    return 1
  end

  set count $argv[1]
  set cmd $argv[2]
  set current_dir (pwd)
  set panes $TMUX_PANE

  tmux rename-window -t $TMUX_PANE (basename $current_dir)

  while test (count $panes) -lt $count
    set split_target $panes[-1]
    set new_pane (tmux split-window -h -t $split_target -c $current_dir -P -F '#{pane_id}')
    set panes $panes $new_pane
    tmux select-layout -t $panes[1] tiled
  end

  for pane in $panes
    tmux send-keys -t $pane "$cmd" Enter
  end

  tmux select-pane -t $panes[1]
end
