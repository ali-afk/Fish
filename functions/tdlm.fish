function tdlm --description 'Create tdl window per subdirectory'
  if test (count $argv) -eq 0
    echo "Usage: tdlm <c|cx|codex|other_ai> [<second_ai>]"
    return 1
  end
  if test -z "$TMUX"
    echo "You must start tmux to use tdlm."
    return 1
  end

  set ai $argv[1]
  set ai2 $argv[2]
  set base_dir (pwd)
  set first true

  tmux rename-session (basename $base_dir | tr '.:' '--')

  for dir in $base_dir/*/
    test -d $dir; or continue
    set dirpath (string replace -r '/$' '' -- $dir)

    if test $first = true
      tmux send-keys -t $TMUX_PANE "cd '$dirpath' && tdl $ai $ai2" Enter
      set first false
    else
      set pane_id (tmux new-window -c $dirpath -P -F '#{pane_id}')
      tmux send-keys -t $pane_id "tdl $ai $ai2" Enter
    end
  end
end
