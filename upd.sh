#!/bin/bash
#
# Refresh all the subdirectories to the current version

oops()
{
echo "OOPS $*" >&2
exit 1
}

# Sub-Sub modules

git submodule --quiet foreach git submodule --quiet foreach git pull || oops pull

# Sub modules

[ -z "`git submodule --quiet foreach git submodule --quiet foreach git status --porcelain`" ] || oops sub-submodules dirty

# Add all the submodules, a bit tricky to escape $name for the second foreach properly
git submodule --quiet foreach 'git add `git submodule --quiet foreach "echo \$""name"`'
[ -z "`git submodule --quiet foreach git status --porcelain | grep -v '^M '`" ] || oops submodules dirty

git submodule --quiet foreach 'git submodule summary | git commit -F- || :'
git submodule --quiet foreach git push

# This module

git add `git submodule --quiet foreach 'echo $name'`
[ -z "`git status --porcelain | fgrep -vxf <(git submodule --quiet foreach 'echo $name' | sed 's/^/M  /')`" ] || oops main module dirty

git submodule summary | git commit -F-
git push

