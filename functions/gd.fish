function gd --description 'Remove current git worktree and branch'
  if gum confirm "Remove worktree and branch?"
    set cwd (pwd)
    set worktree (basename $cwd)
    set root (string replace -r '--.*$' '' -- $worktree)
    set branch (string replace -r '^[^-]*--' '' -- $worktree)

    if test $root != $worktree
      cd "../$root"
      git worktree remove $cwd --force; or return 1
      git branch -D $branch
    end
  end
end
