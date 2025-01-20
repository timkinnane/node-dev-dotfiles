# Render environment variables in .npmrc template and write to ~/.npmrc
envsubst < $DOTFILES/config/npm/.npmrc | cat | grep -v '^#' >| ~/.npmrc
