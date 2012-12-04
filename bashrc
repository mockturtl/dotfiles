. "$HOME/.bash_aliases"

[[ -s "$HOME/git-completion.bash" ]] && \
. "$HOME/git-completion.bash" # git tab completion

[[ -s "$HOME/.ivy2/.repo-config" ]] && \
. "$HOME/.ivy2/.repo-config" # Apache Ivy repository cache

[[ -s "$HOME/.github/.config" ]] && \
. "$HOME/.github/.config" # Github vars

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
