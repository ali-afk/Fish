function ga --description 'Create new git worktree and branch'
  if test (count $argv) -eq 0
    echo "Usage: ga [branch name]"
    return 1
  end

  set branch $argv[1]
  set base (basename (pwd))
  set wt_path "../$base--$branch"

  git worktree add -b $branch $wt_path
  mise trust $wt_path
  cd $wt_path
end
